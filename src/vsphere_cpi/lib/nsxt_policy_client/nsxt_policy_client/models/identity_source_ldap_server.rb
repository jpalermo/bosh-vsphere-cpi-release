=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module NSXTPolicy
  # Information about a single LDAP server.
  class IdentitySourceLdapServer
    # If using LDAPS or STARTTLS, provide the X.509 certificate of the LDAP server in PEM format. This property is not required when connecting without TLS encryption and is ignored in that case.
    attr_accessor :certificates

    # A username used to authenticate to the directory when admnistering roles in NSX. This user should have privileges to search the LDAP directory for groups and users. This user is also used in some cases (OpenLDAP) to look up an NSX user's distinguished name based on their NSX login name. If omitted, NSX will authenticate to the LDAP server using an LDAP anonymous bind operation. For Active Directory, provide a userPrincipalName (e.g. administrator@airius.com) or the full distinguished nane. For OpenLDAP, provide the distinguished name of the user (e.g. uid=admin, cn=airius, dc=com).
    attr_accessor :bind_identity

    # If set to true, Use the StartTLS extended operation to upgrade the connection to TLS before sending any sensitive information. The LDAP server must support the StartTLS extended operation in order for this protocol to operate correctly. This option is ignored if the URL scheme is LDAPS. 
    attr_accessor :use_starttls

    # The URL for the LDAP server. Supported URL schemes are LDAP and LDAPS. Either a hostname or an IP address may be given, and the port number is optional and defaults to 389 for the LDAP scheme and 636 for the LDAPS scheme.
    attr_accessor :url

    # A password used when authenticating to the directory.
    attr_accessor :password

    # Allows the LDAP server to be enabled or disabled. When disabled, this LDAP server will not be used to authenticate users.
    attr_accessor :enabled

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'certificates' => :'certificates',
        :'bind_identity' => :'bind_identity',
        :'use_starttls' => :'use_starttls',
        :'url' => :'url',
        :'password' => :'password',
        :'enabled' => :'enabled'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'certificates' => :'Array<String>',
        :'bind_identity' => :'String',
        :'use_starttls' => :'BOOLEAN',
        :'url' => :'String',
        :'password' => :'String',
        :'enabled' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'certificates')
        if (value = attributes[:'certificates']).is_a?(Array)
          self.certificates = value
        end
      end

      if attributes.has_key?(:'bind_identity')
        self.bind_identity = attributes[:'bind_identity']
      end

      if attributes.has_key?(:'use_starttls')
        self.use_starttls = attributes[:'use_starttls']
      else
        self.use_starttls = false
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = true
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @url.nil?
        invalid_properties.push('invalid value for "url", url cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @url.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          certificates == o.certificates &&
          bind_identity == o.bind_identity &&
          use_starttls == o.use_starttls &&
          url == o.url &&
          password == o.password &&
          enabled == o.enabled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [certificates, bind_identity, use_starttls, url, password, enabled].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXTPolicy.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
