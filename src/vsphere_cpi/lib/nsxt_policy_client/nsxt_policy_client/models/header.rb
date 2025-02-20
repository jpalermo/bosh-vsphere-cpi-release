=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module NSXTPolicy
  # Header of a widget that provides additional information. This will be shown at the container level. It includes details as label value pairs.
  class Header
    # Alignment of header labels.
    attr_accessor :content_alignment

    # If the condition is met then the header will be applied. Examples of expression syntax are provided under 'example_request' section of 'CreateWidgetConfiguration' API.
    attr_accessor :condition

    # An array of label-value properties.
    attr_accessor :sub_headers

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'content_alignment' => :'content_alignment',
        :'condition' => :'condition',
        :'sub_headers' => :'sub_headers'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'content_alignment' => :'String',
        :'condition' => :'String',
        :'sub_headers' => :'Array<PropertyItem>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'content_alignment')
        self.content_alignment = attributes[:'content_alignment']
      else
        self.content_alignment = 'RIGHT'
      end

      if attributes.has_key?(:'condition')
        self.condition = attributes[:'condition']
      end

      if attributes.has_key?(:'sub_headers')
        if (value = attributes[:'sub_headers']).is_a?(Array)
          self.sub_headers = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@condition.nil? && @condition.to_s.length > 1024
        invalid_properties.push('invalid value for "condition", the character length must be smaller than or equal to 1024.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      content_alignment_validator = EnumAttributeValidator.new('String', ['LEFT', 'RIGHT'])
      return false unless content_alignment_validator.valid?(@content_alignment)
      return false if !@condition.nil? && @condition.to_s.length > 1024
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] content_alignment Object to be assigned
    def content_alignment=(content_alignment)
      validator = EnumAttributeValidator.new('String', ['LEFT', 'RIGHT'])
      unless validator.valid?(content_alignment)
        fail ArgumentError, 'invalid value for "content_alignment", must be one of #{validator.allowable_values}.'
      end
      @content_alignment = content_alignment
    end

    # Custom attribute writer method with validation
    # @param [Object] condition Value to be assigned
    def condition=(condition)
      if !condition.nil? && condition.to_s.length > 1024
        fail ArgumentError, 'invalid value for "condition", the character length must be smaller than or equal to 1024.'
      end

      @condition = condition
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          content_alignment == o.content_alignment &&
          condition == o.condition &&
          sub_headers == o.sub_headers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [content_alignment, condition, sub_headers].hash
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
