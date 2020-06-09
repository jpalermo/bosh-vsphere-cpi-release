module VSphereCloud
  module Resources
    class Nic
      def self.create_virtual_nic(cloud_searcher, v_network_name, network, controller_key, dvs_index)
        raise "Invalid network '#{v_network_name}'" if network.nil?

        backing_info = network.nic_backing
        dvs_index.merge!(network.get_dvs_index_hash)
        nic = VimSdk::Vim::Vm::Device::VirtualVmxnet3.new
        nic.key = -1
        nic.controller_key = controller_key
        nic.backing = backing_info

        nic
      end
    end
  end
end
