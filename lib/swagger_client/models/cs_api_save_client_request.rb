=begin
#ChronoSheets API

#ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 5 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.

OpenAPI spec version: v1
Contact: lachlan@chronosheets.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class CsApiSaveClientRequest
    attr_accessor :id

    attr_accessor :client_name

    attr_accessor :client_address_line1

    attr_accessor :client_address_line2

    attr_accessor :client_suburb

    attr_accessor :client_state

    attr_accessor :client_post_code

    attr_accessor :person_of_contact

    attr_accessor :client_phone_number

    attr_accessor :client_mobile_number

    attr_accessor :client_email_address

    attr_accessor :client_web_url


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'client_name' => :'ClientName',
        :'client_address_line1' => :'ClientAddressLine1',
        :'client_address_line2' => :'ClientAddressLine2',
        :'client_suburb' => :'ClientSuburb',
        :'client_state' => :'ClientState',
        :'client_post_code' => :'ClientPostCode',
        :'person_of_contact' => :'PersonOfContact',
        :'client_phone_number' => :'ClientPhoneNumber',
        :'client_mobile_number' => :'ClientMobileNumber',
        :'client_email_address' => :'ClientEmailAddress',
        :'client_web_url' => :'ClientWebURL'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'client_name' => :'String',
        :'client_address_line1' => :'String',
        :'client_address_line2' => :'String',
        :'client_suburb' => :'String',
        :'client_state' => :'String',
        :'client_post_code' => :'String',
        :'person_of_contact' => :'String',
        :'client_phone_number' => :'String',
        :'client_mobile_number' => :'String',
        :'client_email_address' => :'String',
        :'client_web_url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.has_key?(:'ClientName')
        self.client_name = attributes[:'ClientName']
      end

      if attributes.has_key?(:'ClientAddressLine1')
        self.client_address_line1 = attributes[:'ClientAddressLine1']
      end

      if attributes.has_key?(:'ClientAddressLine2')
        self.client_address_line2 = attributes[:'ClientAddressLine2']
      end

      if attributes.has_key?(:'ClientSuburb')
        self.client_suburb = attributes[:'ClientSuburb']
      end

      if attributes.has_key?(:'ClientState')
        self.client_state = attributes[:'ClientState']
      end

      if attributes.has_key?(:'ClientPostCode')
        self.client_post_code = attributes[:'ClientPostCode']
      end

      if attributes.has_key?(:'PersonOfContact')
        self.person_of_contact = attributes[:'PersonOfContact']
      end

      if attributes.has_key?(:'ClientPhoneNumber')
        self.client_phone_number = attributes[:'ClientPhoneNumber']
      end

      if attributes.has_key?(:'ClientMobileNumber')
        self.client_mobile_number = attributes[:'ClientMobileNumber']
      end

      if attributes.has_key?(:'ClientEmailAddress')
        self.client_email_address = attributes[:'ClientEmailAddress']
      end

      if attributes.has_key?(:'ClientWebURL')
        self.client_web_url = attributes[:'ClientWebURL']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          client_name == o.client_name &&
          client_address_line1 == o.client_address_line1 &&
          client_address_line2 == o.client_address_line2 &&
          client_suburb == o.client_suburb &&
          client_state == o.client_state &&
          client_post_code == o.client_post_code &&
          person_of_contact == o.person_of_contact &&
          client_phone_number == o.client_phone_number &&
          client_mobile_number == o.client_mobile_number &&
          client_email_address == o.client_email_address &&
          client_web_url == o.client_web_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, client_name, client_address_line1, client_address_line2, client_suburb, client_state, client_post_code, person_of_contact, client_phone_number, client_mobile_number, client_email_address, client_web_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = SwaggerClient.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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
