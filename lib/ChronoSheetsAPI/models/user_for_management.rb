=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module ChronoSheetsAPI
  class UserForManagement
    attr_accessor :is_account_active

    attr_accessor :id

    attr_accessor :organisation_id

    attr_accessor :user_name

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :email_address

    attr_accessor :roles

    attr_accessor :alert_settings

    attr_accessor :setup_wizard_required

    attr_accessor :is_subscribed_to_newsletter

    attr_accessor :organisation

    attr_accessor :is_primary_account

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_account_active' => :'IsAccountActive',
        :'id' => :'Id',
        :'organisation_id' => :'OrganisationId',
        :'user_name' => :'UserName',
        :'first_name' => :'FirstName',
        :'last_name' => :'LastName',
        :'email_address' => :'EmailAddress',
        :'roles' => :'Roles',
        :'alert_settings' => :'AlertSettings',
        :'setup_wizard_required' => :'SetupWizardRequired',
        :'is_subscribed_to_newsletter' => :'IsSubscribedToNewsletter',
        :'organisation' => :'Organisation',
        :'is_primary_account' => :'IsPrimaryAccount'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'is_account_active' => :'Boolean',
        :'id' => :'Integer',
        :'organisation_id' => :'Integer',
        :'user_name' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'email_address' => :'String',
        :'roles' => :'Integer',
        :'alert_settings' => :'Integer',
        :'setup_wizard_required' => :'Boolean',
        :'is_subscribed_to_newsletter' => :'Boolean',
        :'organisation' => :'Organisation',
        :'is_primary_account' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChronoSheetsAPI::UserForManagement` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChronoSheetsAPI::UserForManagement`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_account_active')
        self.is_account_active = attributes[:'is_account_active']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'organisation_id')
        self.organisation_id = attributes[:'organisation_id']
      end

      if attributes.key?(:'user_name')
        self.user_name = attributes[:'user_name']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'roles')
        self.roles = attributes[:'roles']
      end

      if attributes.key?(:'alert_settings')
        self.alert_settings = attributes[:'alert_settings']
      end

      if attributes.key?(:'setup_wizard_required')
        self.setup_wizard_required = attributes[:'setup_wizard_required']
      end

      if attributes.key?(:'is_subscribed_to_newsletter')
        self.is_subscribed_to_newsletter = attributes[:'is_subscribed_to_newsletter']
      end

      if attributes.key?(:'organisation')
        self.organisation = attributes[:'organisation']
      end

      if attributes.key?(:'is_primary_account')
        self.is_primary_account = attributes[:'is_primary_account']
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
          is_account_active == o.is_account_active &&
          id == o.id &&
          organisation_id == o.organisation_id &&
          user_name == o.user_name &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          email_address == o.email_address &&
          roles == o.roles &&
          alert_settings == o.alert_settings &&
          setup_wizard_required == o.setup_wizard_required &&
          is_subscribed_to_newsletter == o.is_subscribed_to_newsletter &&
          organisation == o.organisation &&
          is_primary_account == o.is_primary_account
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [is_account_active, id, organisation_id, user_name, first_name, last_name, email_address, roles, alert_settings, setup_wizard_required, is_subscribed_to_newsletter, organisation, is_primary_account].hash
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
