require 'cloud/vsphere/resources'

module VSphereCloud
  module Resources
    class Network
      include VimSdk
      include ObjectStringifier
      stringify_with :name, :mob, :bosh_name

      attr_reader :mob, :client, :bosh_name
      def self.make_network_resource(bosh_name, mob, client)
        nw_type = case mob
        when VimSdk::Vim::Dvs::DistributedVirtualPortgroup
          if mob.config.respond_to?(:backing_type) && mob.config.backing_type == 'nsx'
            DistributedVirtualPortGroupNSXTNetwork
          else
            DistributedVirtualPortGroupNetwork
          end
        when VimSdk::Vim::OpaqueNetwork
          OpaqueNetwork
        else
          Network
        end
        nw_type.new(bosh_name, mob, client)
      end

      def initialize(bosh_name, mob, client)
        @bosh_name = bosh_name
        @mob = mob
        @client = client
      end

      def vim_name
        @mob.name
      end

      def nic_backing()
        backing_info = VimSdk::Vim::Vm::Device::VirtualEthernetCard::NetworkBackingInfo.new
        backing_info.device_name = vim_name
        backing_info.network = mob
        backing_info
      end

      def get_dvs_index_hash()
        {}
      end

      def inspect
        "<network: / #{@bosh_name} / #{@mob}>"
      end
    end

    class OpaqueNetwork < Network
      def nic_backing()
        backing_info = VimSdk::Vim::Vm::Device::VirtualEthernetCard::OpaqueNetworkBackingInfo.new
        network_id = mob.summary.opaque_network_id
        backing_info.opaque_network_id = network_id
        backing_info.opaque_network_type = mob.summary.opaque_network_type
        backing_info
      end

      def get_dvs_index_hash()
        {mob.summary.opaque_network_id => bosh_name}
      end
    end

    class DistributedVirtualPortGroupNetwork < Network
      def nic_backing()
        portgroup_properties = client.cloud_searcher.get_properties(mob,
                                 VimSdk::Vim::Dvs::DistributedVirtualPortgroup,
                                 ['config.key', 'config.distributedVirtualSwitch'],
                                 ensure_all: true)
        switch = portgroup_properties['config.distributedVirtualSwitch']
        switch_uuid = client.cloud_searcher.get_property(switch, VimSdk::Vim::DistributedVirtualSwitch,
                                                         'uuid', ensure_all: true)

        port = VimSdk::Vim::Dvs::PortConnection.new
        port.switch_uuid = switch_uuid
        port.portgroup_key = portgroup_properties['config.key']

        backing_info = VimSdk::Vim::Vm::Device::VirtualEthernetCard::DistributedVirtualPortBackingInfo.new
        backing_info.port = port

        backing_info
      end

      def get_dvs_index_hash()
        {mob.config.key => bosh_name}
      end
    end


    class DistributedVirtualPortGroupNSXTNetwork < Network
      def nic_backing()
        # NSXT backed DVPG are a CVDS feature supported with only 7.0
        # CPI treats these NSXT DVPG like an opaque network and uses
        # their logical switch uuid to create opaque backing rather than DVPG type backing
        backing_info = VimSdk::Vim::Vm::Device::VirtualEthernetCard::OpaqueNetworkBackingInfo.new
        backing_info.opaque_network_id = mob.config.logical_switch_uuid
        backing_info.opaque_network_type = 'nsx.LogicalSwitch'
        backing_info
      end

      def get_dvs_index_hash()
        {mob.config.logical_switch_uuid => bosh_name}
      end
    end
  end
end

