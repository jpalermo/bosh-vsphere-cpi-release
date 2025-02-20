=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXTPolicy
  class PolicySecurityServiceInsertionStatisticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get statistics for all runtimes associated with this PolicyServiceInstance
    # Get statistics for all data NICs on all runtimes associated with this PolicyServiceInstance. 
    # @param tier_0_id Tier-0 id
    # @param locale_service_id Locale service id
    # @param service_instance_id Service instance id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [PolicyServiceInstanceStatistics]
    def get_policy_service_instance_statistics(tier_0_id, locale_service_id, service_instance_id, opts = {})
      data, _status_code, _headers = get_policy_service_instance_statistics_with_http_info(tier_0_id, locale_service_id, service_instance_id, opts)
      data
    end

    # Get statistics for all runtimes associated with this PolicyServiceInstance
    # Get statistics for all data NICs on all runtimes associated with this PolicyServiceInstance. 
    # @param tier_0_id Tier-0 id
    # @param locale_service_id Locale service id
    # @param service_instance_id Service instance id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(PolicyServiceInstanceStatistics, Fixnum, Hash)>] PolicyServiceInstanceStatistics data, response status code and response headers
    def get_policy_service_instance_statistics_with_http_info(tier_0_id, locale_service_id, service_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecurityServiceInsertionStatisticsApi.get_policy_service_instance_statistics ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_policy_service_instance_statistics"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_policy_service_instance_statistics"
      end
      # verify the required parameter 'service_instance_id' is set
      if @api_client.config.client_side_validation && service_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_instance_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_policy_service_instance_statistics"
      end
      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/service-instances/{service-instance-id}/statistics'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'service-instance-id' + '}', service_instance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PolicyServiceInstanceStatistics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecurityServiceInsertionStatisticsApi#get_policy_service_instance_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get statistics for all runtimes associated with this PolicyServiceInstance
    # Get statistics for all data NICs on all runtimes associated with this PolicyServiceInstance. 
    # @param tier_0_id Tier-0 id
    # @param locale_service_id Locale service id
    # @param service_instance_id Service instance id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [PolicyServiceInstanceStatistics]
    def get_policy_service_instance_statistics_0(tier_0_id, locale_service_id, service_instance_id, opts = {})
      data, _status_code, _headers = get_policy_service_instance_statistics_0_with_http_info(tier_0_id, locale_service_id, service_instance_id, opts)
      data
    end

    # Get statistics for all runtimes associated with this PolicyServiceInstance
    # Get statistics for all data NICs on all runtimes associated with this PolicyServiceInstance. 
    # @param tier_0_id Tier-0 id
    # @param locale_service_id Locale service id
    # @param service_instance_id Service instance id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(PolicyServiceInstanceStatistics, Fixnum, Hash)>] PolicyServiceInstanceStatistics data, response status code and response headers
    def get_policy_service_instance_statistics_0_with_http_info(tier_0_id, locale_service_id, service_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecurityServiceInsertionStatisticsApi.get_policy_service_instance_statistics_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_policy_service_instance_statistics_0"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_policy_service_instance_statistics_0"
      end
      # verify the required parameter 'service_instance_id' is set
      if @api_client.config.client_side_validation && service_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_instance_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_policy_service_instance_statistics_0"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/service-instances/{service-instance-id}/statistics'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'service-instance-id' + '}', service_instance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PolicyServiceInstanceStatistics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecurityServiceInsertionStatisticsApi#get_policy_service_instance_statistics_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get statistics for all runtimes associated with this Tier1 PolicyServiceInstance
    # Get statistics for all data NICs on all runtimes associated with this Tier1 PolicyServiceInstance. 
    # @param tier_1_id Tier-1 id
    # @param locale_service_id Locale service id
    # @param service_instance_id Tier1 Service instance id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [PolicyServiceInstanceStatistics]
    def get_tier1_policy_service_instance_statistics(tier_1_id, locale_service_id, service_instance_id, opts = {})
      data, _status_code, _headers = get_tier1_policy_service_instance_statistics_with_http_info(tier_1_id, locale_service_id, service_instance_id, opts)
      data
    end

    # Get statistics for all runtimes associated with this Tier1 PolicyServiceInstance
    # Get statistics for all data NICs on all runtimes associated with this Tier1 PolicyServiceInstance. 
    # @param tier_1_id Tier-1 id
    # @param locale_service_id Locale service id
    # @param service_instance_id Tier1 Service instance id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(PolicyServiceInstanceStatistics, Fixnum, Hash)>] PolicyServiceInstanceStatistics data, response status code and response headers
    def get_tier1_policy_service_instance_statistics_with_http_info(tier_1_id, locale_service_id, service_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecurityServiceInsertionStatisticsApi.get_tier1_policy_service_instance_statistics ...'
      end
      # verify the required parameter 'tier_1_id' is set
      if @api_client.config.client_side_validation && tier_1_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_1_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_tier1_policy_service_instance_statistics"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_tier1_policy_service_instance_statistics"
      end
      # verify the required parameter 'service_instance_id' is set
      if @api_client.config.client_side_validation && service_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_instance_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_tier1_policy_service_instance_statistics"
      end
      # resource path
      local_var_path = '/infra/tier-1s/{tier-1-id}/locale-services/{locale-service-id}/service-instances/{service-instance-id}/statistics'.sub('{' + 'tier-1-id' + '}', tier_1_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'service-instance-id' + '}', service_instance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PolicyServiceInstanceStatistics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecurityServiceInsertionStatisticsApi#get_tier1_policy_service_instance_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get statistics for all runtimes associated with this Tier1 PolicyServiceInstance
    # Get statistics for all data NICs on all runtimes associated with this Tier1 PolicyServiceInstance. 
    # @param tier_1_id Tier-1 id
    # @param locale_service_id Locale service id
    # @param service_instance_id Tier1 Service instance id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [PolicyServiceInstanceStatistics]
    def get_tier1_policy_service_instance_statistics_0(tier_1_id, locale_service_id, service_instance_id, opts = {})
      data, _status_code, _headers = get_tier1_policy_service_instance_statistics_0_with_http_info(tier_1_id, locale_service_id, service_instance_id, opts)
      data
    end

    # Get statistics for all runtimes associated with this Tier1 PolicyServiceInstance
    # Get statistics for all data NICs on all runtimes associated with this Tier1 PolicyServiceInstance. 
    # @param tier_1_id Tier-1 id
    # @param locale_service_id Locale service id
    # @param service_instance_id Tier1 Service instance id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(PolicyServiceInstanceStatistics, Fixnum, Hash)>] PolicyServiceInstanceStatistics data, response status code and response headers
    def get_tier1_policy_service_instance_statistics_0_with_http_info(tier_1_id, locale_service_id, service_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecurityServiceInsertionStatisticsApi.get_tier1_policy_service_instance_statistics_0 ...'
      end
      # verify the required parameter 'tier_1_id' is set
      if @api_client.config.client_side_validation && tier_1_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_1_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_tier1_policy_service_instance_statistics_0"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_tier1_policy_service_instance_statistics_0"
      end
      # verify the required parameter 'service_instance_id' is set
      if @api_client.config.client_side_validation && service_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_instance_id' when calling PolicySecurityServiceInsertionStatisticsApi.get_tier1_policy_service_instance_statistics_0"
      end
      # resource path
      local_var_path = '/global-infra/tier-1s/{tier-1-id}/locale-services/{locale-service-id}/service-instances/{service-instance-id}/statistics'.sub('{' + 'tier-1-id' + '}', tier_1_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'service-instance-id' + '}', service_instance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PolicyServiceInstanceStatistics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecurityServiceInsertionStatisticsApi#get_tier1_policy_service_instance_statistics_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
