=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module ChronoSheetsAPI
  class AggregateClient
    # A list of projects that are under this client
    attr_accessor :client_projects

    # The ID of the client
    attr_accessor :id

    # The ID of your organisation
    attr_accessor :organisation_id

    # The name of the client
    attr_accessor :client_name

    # The address line 1 of the client
    attr_accessor :client_address_line1

    # The address line 2 of the client
    attr_accessor :client_address_line2

    # The address suburb of the client
    attr_accessor :client_suburb

    # The address state of the client
    attr_accessor :client_state

    # The postcode of the client
    attr_accessor :client_post_code

    # The contact person working under the client
    attr_accessor :person_of_contact

    # The phone number of the client
    attr_accessor :client_phone_number

    # The mobile phone number of the client
    attr_accessor :client_mobile_number

    # The email address of the client
    attr_accessor :client_email_address

    # The website URL of the client
    attr_accessor :client_web_url

    # The number of projects under the client
    attr_accessor :project_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'client_projects' => :'ClientProjects',
        :'id' => :'Id',
        :'organisation_id' => :'OrganisationId',
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
        :'client_web_url' => :'ClientWebURL',
        :'project_count' => :'ProjectCount'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'client_projects' => :'Array<AggregateProject>',
        :'id' => :'Integer',
        :'organisation_id' => :'Integer',
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
        :'client_web_url' => :'String',
        :'project_count' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChronoSheetsAPI::AggregateClient` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChronoSheetsAPI::AggregateClient`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'client_projects')
        if (value = attributes[:'client_projects']).is_a?(Array)
          self.client_projects = value
        end
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'organisation_id')
        self.organisation_id = attributes[:'organisation_id']
      end

      if attributes.key?(:'client_name')
        self.client_name = attributes[:'client_name']
      end

      if attributes.key?(:'client_address_line1')
        self.client_address_line1 = attributes[:'client_address_line1']
      end

      if attributes.key?(:'client_address_line2')
        self.client_address_line2 = attributes[:'client_address_line2']
      end

      if attributes.key?(:'client_suburb')
        self.client_suburb = attributes[:'client_suburb']
      end

      if attributes.key?(:'client_state')
        self.client_state = attributes[:'client_state']
      end

      if attributes.key?(:'client_post_code')
        self.client_post_code = attributes[:'client_post_code']
      end

      if attributes.key?(:'person_of_contact')
        self.person_of_contact = attributes[:'person_of_contact']
      end

      if attributes.key?(:'client_phone_number')
        self.client_phone_number = attributes[:'client_phone_number']
      end

      if attributes.key?(:'client_mobile_number')
        self.client_mobile_number = attributes[:'client_mobile_number']
      end

      if attributes.key?(:'client_email_address')
        self.client_email_address = attributes[:'client_email_address']
      end

      if attributes.key?(:'client_web_url')
        self.client_web_url = attributes[:'client_web_url']
      end

      if attributes.key?(:'project_count')
        self.project_count = attributes[:'project_count']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client_projects == o.client_projects &&
          id == o.id &&
          organisation_id == o.organisation_id &&
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
          client_web_url == o.client_web_url &&
          project_count == o.project_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [client_projects, id, organisation_id, client_name, client_address_line1, client_address_line2, client_suburb, client_state, client_post_code, person_of_contact, client_phone_number, client_mobile_number, client_email_address, client_web_url, project_count].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
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
      when :Boolean
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
        ChronoSheetsAPI.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
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
