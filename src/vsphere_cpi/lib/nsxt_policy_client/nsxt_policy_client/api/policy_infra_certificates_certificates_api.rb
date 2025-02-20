=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXTPolicy
  class PolicyInfraCertificatesCertificatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a New Certificate
    # Adds a new private-public certificate and, optionally, a private key that can be applied to one of the user-facing components (appliance management or edge). The certificate and the key should be stored in PEM format. If no private key is provided, the certificate is used as a client certificate in the trust store.  A certificate chain will not be expanded into separate certificate instances for reference, but would be pushed to the enforcement point as a single certificate. 
    # @param certificate_id 
    # @param tls_trust_data 
    # @param [Hash] opts the optional parameters
    # @return [TlsCertificate]
    def add_tls_certificate(certificate_id, tls_trust_data, opts = {})
      data, _status_code, _headers = add_tls_certificate_with_http_info(certificate_id, tls_trust_data, opts)
      data
    end

    # Add a New Certificate
    # Adds a new private-public certificate and, optionally, a private key that can be applied to one of the user-facing components (appliance management or edge). The certificate and the key should be stored in PEM format. If no private key is provided, the certificate is used as a client certificate in the trust store.  A certificate chain will not be expanded into separate certificate instances for reference, but would be pushed to the enforcement point as a single certificate. 
    # @param certificate_id 
    # @param tls_trust_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TlsCertificate, Fixnum, Hash)>] TlsCertificate data, response status code and response headers
    def add_tls_certificate_with_http_info(certificate_id, tls_trust_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyInfraCertificatesCertificatesApi.add_tls_certificate ...'
      end
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling PolicyInfraCertificatesCertificatesApi.add_tls_certificate"
      end
      # verify the required parameter 'tls_trust_data' is set
      if @api_client.config.client_side_validation && tls_trust_data.nil?
        fail ArgumentError, "Missing the required parameter 'tls_trust_data' when calling PolicyInfraCertificatesCertificatesApi.add_tls_certificate"
      end
      # resource path
      local_var_path = '/infra/certificates/{certificate-id}'.sub('{' + 'certificate-id' + '}', certificate_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(tls_trust_data)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TlsCertificate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyInfraCertificatesCertificatesApi#add_tls_certificate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add a New Certificate
    # Adds a new private-public certificate and, optionally, a private key that can be applied to one of the user-facing components (appliance management or edge). The certificate and the key should be stored in PEM format. If no private key is provided, the certificate is used as a client certificate in the trust store.  A certificate chain will not be expanded into separate certificate instances for reference, but would be pushed to the enforcement point as a single certificate. 
    # @param certificate_id 
    # @param tls_trust_data 
    # @param [Hash] opts the optional parameters
    # @return [TlsCertificate]
    def add_tls_certificate_0(certificate_id, tls_trust_data, opts = {})
      data, _status_code, _headers = add_tls_certificate_0_with_http_info(certificate_id, tls_trust_data, opts)
      data
    end

    # Add a New Certificate
    # Adds a new private-public certificate and, optionally, a private key that can be applied to one of the user-facing components (appliance management or edge). The certificate and the key should be stored in PEM format. If no private key is provided, the certificate is used as a client certificate in the trust store.  A certificate chain will not be expanded into separate certificate instances for reference, but would be pushed to the enforcement point as a single certificate. 
    # @param certificate_id 
    # @param tls_trust_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TlsCertificate, Fixnum, Hash)>] TlsCertificate data, response status code and response headers
    def add_tls_certificate_0_with_http_info(certificate_id, tls_trust_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyInfraCertificatesCertificatesApi.add_tls_certificate_0 ...'
      end
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling PolicyInfraCertificatesCertificatesApi.add_tls_certificate_0"
      end
      # verify the required parameter 'tls_trust_data' is set
      if @api_client.config.client_side_validation && tls_trust_data.nil?
        fail ArgumentError, "Missing the required parameter 'tls_trust_data' when calling PolicyInfraCertificatesCertificatesApi.add_tls_certificate_0"
      end
      # resource path
      local_var_path = '/global-infra/certificates/{certificate-id}'.sub('{' + 'certificate-id' + '}', certificate_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(tls_trust_data)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TlsCertificate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyInfraCertificatesCertificatesApi#add_tls_certificate_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Certificate for the Given Certificate ID
    # Removes the specified certificate. The private key associated with the certificate is also deleted. 
    # @param certificate_id ID of certificate to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tls_certificate(certificate_id, opts = {})
      delete_tls_certificate_with_http_info(certificate_id, opts)
      nil
    end

    # Delete Certificate for the Given Certificate ID
    # Removes the specified certificate. The private key associated with the certificate is also deleted. 
    # @param certificate_id ID of certificate to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tls_certificate_with_http_info(certificate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyInfraCertificatesCertificatesApi.delete_tls_certificate ...'
      end
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling PolicyInfraCertificatesCertificatesApi.delete_tls_certificate"
      end
      # resource path
      local_var_path = '/infra/certificates/{certificate-id}'.sub('{' + 'certificate-id' + '}', certificate_id.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyInfraCertificatesCertificatesApi#delete_tls_certificate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Certificate for the Given Certificate ID
    # Removes the specified certificate. The private key associated with the certificate is also deleted. 
    # @param certificate_id ID of certificate to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tls_certificate_0(certificate_id, opts = {})
      delete_tls_certificate_0_with_http_info(certificate_id, opts)
      nil
    end

    # Delete Certificate for the Given Certificate ID
    # Removes the specified certificate. The private key associated with the certificate is also deleted. 
    # @param certificate_id ID of certificate to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tls_certificate_0_with_http_info(certificate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyInfraCertificatesCertificatesApi.delete_tls_certificate_0 ...'
      end
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling PolicyInfraCertificatesCertificatesApi.delete_tls_certificate_0"
      end
      # resource path
      local_var_path = '/global-infra/certificates/{certificate-id}'.sub('{' + 'certificate-id' + '}', certificate_id.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyInfraCertificatesCertificatesApi#delete_tls_certificate_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Show Certificate Data for the Given Certificate ID
    # Returns information for the specified certificate ID, including the certificate's id; resource_type (for example, certificate_self_signed, certificate_ca, or certificate_signed); pem_encoded data; and history of the certificate (who created or modified it and when). For additional information, include the ?details=true modifier at the end of the request URI. 
    # @param certificate_id ID of certificate to read
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details (default to false)
    # @return [TlsCertificate]
    def get_tls_certificate(certificate_id, opts = {})
      data, _status_code, _headers = get_tls_certificate_with_http_info(certificate_id, opts)
      data
    end

    # Show Certificate Data for the Given Certificate ID
    # Returns information for the specified certificate ID, including the certificate&#39;s id; resource_type (for example, certificate_self_signed, certificate_ca, or certificate_signed); pem_encoded data; and history of the certificate (who created or modified it and when). For additional information, include the ?details&#x3D;true modifier at the end of the request URI. 
    # @param certificate_id ID of certificate to read
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details
    # @return [Array<(TlsCertificate, Fixnum, Hash)>] TlsCertificate data, response status code and response headers
    def get_tls_certificate_with_http_info(certificate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyInfraCertificatesCertificatesApi.get_tls_certificate ...'
      end
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling PolicyInfraCertificatesCertificatesApi.get_tls_certificate"
      end
      # resource path
      local_var_path = '/infra/certificates/{certificate-id}'.sub('{' + 'certificate-id' + '}', certificate_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'details'] = opts[:'details'] if !opts[:'details'].nil?

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
        :return_type => 'TlsCertificate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyInfraCertificatesCertificatesApi#get_tls_certificate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Show Certificate Data for the Given Certificate ID
    # Returns information for the specified certificate ID, including the certificate's id; resource_type (for example, certificate_self_signed, certificate_ca, or certificate_signed); pem_encoded data; and history of the certificate (who created or modified it and when). For additional information, include the ?details=true modifier at the end of the request URI. 
    # @param certificate_id ID of certificate to read
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details (default to false)
    # @return [TlsCertificate]
    def get_tls_certificate_0(certificate_id, opts = {})
      data, _status_code, _headers = get_tls_certificate_0_with_http_info(certificate_id, opts)
      data
    end

    # Show Certificate Data for the Given Certificate ID
    # Returns information for the specified certificate ID, including the certificate&#39;s id; resource_type (for example, certificate_self_signed, certificate_ca, or certificate_signed); pem_encoded data; and history of the certificate (who created or modified it and when). For additional information, include the ?details&#x3D;true modifier at the end of the request URI. 
    # @param certificate_id ID of certificate to read
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details
    # @return [Array<(TlsCertificate, Fixnum, Hash)>] TlsCertificate data, response status code and response headers
    def get_tls_certificate_0_with_http_info(certificate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyInfraCertificatesCertificatesApi.get_tls_certificate_0 ...'
      end
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling PolicyInfraCertificatesCertificatesApi.get_tls_certificate_0"
      end
      # resource path
      local_var_path = '/global-infra/certificates/{certificate-id}'.sub('{' + 'certificate-id' + '}', certificate_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'details'] = opts[:'details'] if !opts[:'details'].nil?

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
        :return_type => 'TlsCertificate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyInfraCertificatesCertificatesApi#get_tls_certificate_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return All the User-Facing Components' Certificates
    # Returns all certificate information viewable by the user, including each certificate's id; resource_type (for example, certificate_self_signed, certificate_ca, or certificate_signed); pem_encoded data; and history of the certificate (who created or modified it and when). For additional information, include the ?details=true modifier at the end of the request URI. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :type Type of certificate to return
    # @return [TlsCertificateList]
    def list_tls_certificates(opts = {})
      data, _status_code, _headers = list_tls_certificates_with_http_info(opts)
      data
    end

    # Return All the User-Facing Components&#39; Certificates
    # Returns all certificate information viewable by the user, including each certificate&#39;s id; resource_type (for example, certificate_self_signed, certificate_ca, or certificate_signed); pem_encoded data; and history of the certificate (who created or modified it and when). For additional information, include the ?details&#x3D;true modifier at the end of the request URI. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :type Type of certificate to return
    # @return [Array<(TlsCertificateList, Fixnum, Hash)>] TlsCertificateList data, response status code and response headers
    def list_tls_certificates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyInfraCertificatesCertificatesApi.list_tls_certificates ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyInfraCertificatesCertificatesApi.list_tls_certificates, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyInfraCertificatesCertificatesApi.list_tls_certificates, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'type'] && !['cluster_api_certificate'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of cluster_api_certificate'
      end
      # resource path
      local_var_path = '/global-infra/certificates'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'details'] = opts[:'details'] if !opts[:'details'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

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
        :return_type => 'TlsCertificateList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyInfraCertificatesCertificatesApi#list_tls_certificates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return All the User-Facing Components' Certificates
    # Returns all certificate information viewable by the user, including each certificate's id; resource_type (for example, certificate_self_signed, certificate_ca, or certificate_signed); pem_encoded data; and history of the certificate (who created or modified it and when). For additional information, include the ?details=true modifier at the end of the request URI. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :type Type of certificate to return
    # @return [TlsCertificateList]
    def list_tls_certificates_0(opts = {})
      data, _status_code, _headers = list_tls_certificates_0_with_http_info(opts)
      data
    end

    # Return All the User-Facing Components&#39; Certificates
    # Returns all certificate information viewable by the user, including each certificate&#39;s id; resource_type (for example, certificate_self_signed, certificate_ca, or certificate_signed); pem_encoded data; and history of the certificate (who created or modified it and when). For additional information, include the ?details&#x3D;true modifier at the end of the request URI. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :type Type of certificate to return
    # @return [Array<(TlsCertificateList, Fixnum, Hash)>] TlsCertificateList data, response status code and response headers
    def list_tls_certificates_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyInfraCertificatesCertificatesApi.list_tls_certificates_0 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyInfraCertificatesCertificatesApi.list_tls_certificates_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyInfraCertificatesCertificatesApi.list_tls_certificates_0, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'type'] && !['cluster_api_certificate'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of cluster_api_certificate'
      end
      # resource path
      local_var_path = '/infra/certificates'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'details'] = opts[:'details'] if !opts[:'details'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

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
        :return_type => 'TlsCertificateList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyInfraCertificatesCertificatesApi#list_tls_certificates_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add a New Certificate
    # Adds a new private-public certificate and, optionally, a private key that can be applied to one of the user-facing components (appliance management or edge). The certificate and the key should be stored in PEM format. If no private key is provided, the certificate is used as a client certificate in the trust store.  A certificate chain will not be expanded into separate certificate instances for reference, but would be pushed to the enforcement point as a single certificate.  This patch method does not modify an existing certificate. 
    # @param certificate_id 
    # @param tls_trust_data 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_tls_certificate(certificate_id, tls_trust_data, opts = {})
      patch_tls_certificate_with_http_info(certificate_id, tls_trust_data, opts)
      nil
    end

    # Add a New Certificate
    # Adds a new private-public certificate and, optionally, a private key that can be applied to one of the user-facing components (appliance management or edge). The certificate and the key should be stored in PEM format. If no private key is provided, the certificate is used as a client certificate in the trust store.  A certificate chain will not be expanded into separate certificate instances for reference, but would be pushed to the enforcement point as a single certificate.  This patch method does not modify an existing certificate. 
    # @param certificate_id 
    # @param tls_trust_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_tls_certificate_with_http_info(certificate_id, tls_trust_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyInfraCertificatesCertificatesApi.patch_tls_certificate ...'
      end
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling PolicyInfraCertificatesCertificatesApi.patch_tls_certificate"
      end
      # verify the required parameter 'tls_trust_data' is set
      if @api_client.config.client_side_validation && tls_trust_data.nil?
        fail ArgumentError, "Missing the required parameter 'tls_trust_data' when calling PolicyInfraCertificatesCertificatesApi.patch_tls_certificate"
      end
      # resource path
      local_var_path = '/infra/certificates/{certificate-id}'.sub('{' + 'certificate-id' + '}', certificate_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(tls_trust_data)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyInfraCertificatesCertificatesApi#patch_tls_certificate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add a New Certificate
    # Adds a new private-public certificate and, optionally, a private key that can be applied to one of the user-facing components (appliance management or edge). The certificate and the key should be stored in PEM format. If no private key is provided, the certificate is used as a client certificate in the trust store.  A certificate chain will not be expanded into separate certificate instances for reference, but would be pushed to the enforcement point as a single certificate.  This patch method does not modify an existing certificate. 
    # @param certificate_id 
    # @param tls_trust_data 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_tls_certificate_0(certificate_id, tls_trust_data, opts = {})
      patch_tls_certificate_0_with_http_info(certificate_id, tls_trust_data, opts)
      nil
    end

    # Add a New Certificate
    # Adds a new private-public certificate and, optionally, a private key that can be applied to one of the user-facing components (appliance management or edge). The certificate and the key should be stored in PEM format. If no private key is provided, the certificate is used as a client certificate in the trust store.  A certificate chain will not be expanded into separate certificate instances for reference, but would be pushed to the enforcement point as a single certificate.  This patch method does not modify an existing certificate. 
    # @param certificate_id 
    # @param tls_trust_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_tls_certificate_0_with_http_info(certificate_id, tls_trust_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyInfraCertificatesCertificatesApi.patch_tls_certificate_0 ...'
      end
      # verify the required parameter 'certificate_id' is set
      if @api_client.config.client_side_validation && certificate_id.nil?
        fail ArgumentError, "Missing the required parameter 'certificate_id' when calling PolicyInfraCertificatesCertificatesApi.patch_tls_certificate_0"
      end
      # verify the required parameter 'tls_trust_data' is set
      if @api_client.config.client_side_validation && tls_trust_data.nil?
        fail ArgumentError, "Missing the required parameter 'tls_trust_data' when calling PolicyInfraCertificatesCertificatesApi.patch_tls_certificate_0"
      end
      # resource path
      local_var_path = '/global-infra/certificates/{certificate-id}'.sub('{' + 'certificate-id' + '}', certificate_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(tls_trust_data)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyInfraCertificatesCertificatesApi#patch_tls_certificate_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
