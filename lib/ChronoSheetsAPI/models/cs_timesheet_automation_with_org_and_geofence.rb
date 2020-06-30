=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module ChronoSheetsAPI
  class CSTimesheetAutomationWithOrgAndGeofence
    attr_accessor :org_id

    attr_accessor :geofence_name

    attr_accessor :coordinates

    attr_accessor :user_id

    attr_accessor :user_name

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :automation_id

    attr_accessor :automation_action_type

    attr_accessor :created

    attr_accessor :latitude

    attr_accessor :longitude

    attr_accessor :is_processed

    attr_accessor :expires

    attr_accessor :client_date_time

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
        :'org_id' => :'OrgId',
        :'geofence_name' => :'GeofenceName',
        :'coordinates' => :'Coordinates',
        :'user_id' => :'UserId',
        :'user_name' => :'UserName',
        :'first_name' => :'FirstName',
        :'last_name' => :'LastName',
        :'automation_id' => :'AutomationId',
        :'automation_action_type' => :'AutomationActionType',
        :'created' => :'Created',
        :'latitude' => :'Latitude',
        :'longitude' => :'Longitude',
        :'is_processed' => :'IsProcessed',
        :'expires' => :'Expires',
        :'client_date_time' => :'ClientDateTime'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'org_id' => :'Integer',
        :'geofence_name' => :'String',
        :'coordinates' => :'Array<CSBasicCoordinate>',
        :'user_id' => :'Integer',
        :'user_name' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'automation_id' => :'Integer',
        :'automation_action_type' => :'String',
        :'created' => :'DateTime',
        :'latitude' => :'Float',
        :'longitude' => :'Float',
        :'is_processed' => :'BOOLEAN',
        :'expires' => :'DateTime',
        :'client_date_time' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'OrgId')
        self.org_id = attributes[:'OrgId']
      end

      if attributes.has_key?(:'GeofenceName')
        self.geofence_name = attributes[:'GeofenceName']
      end

      if attributes.has_key?(:'Coordinates')
        if (value = attributes[:'Coordinates']).is_a?(Array)
          self.coordinates = value
        end
      end

      if attributes.has_key?(:'UserId')
        self.user_id = attributes[:'UserId']
      end

      if attributes.has_key?(:'UserName')
        self.user_name = attributes[:'UserName']
      end

      if attributes.has_key?(:'FirstName')
        self.first_name = attributes[:'FirstName']
      end

      if attributes.has_key?(:'LastName')
        self.last_name = attributes[:'LastName']
      end

      if attributes.has_key?(:'AutomationId')
        self.automation_id = attributes[:'AutomationId']
      end

      if attributes.has_key?(:'AutomationActionType')
        self.automation_action_type = attributes[:'AutomationActionType']
      end

      if attributes.has_key?(:'Created')
        self.created = attributes[:'Created']
      end

      if attributes.has_key?(:'Latitude')
        self.latitude = attributes[:'Latitude']
      end

      if attributes.has_key?(:'Longitude')
        self.longitude = attributes[:'Longitude']
      end

      if attributes.has_key?(:'IsProcessed')
        self.is_processed = attributes[:'IsProcessed']
      end

      if attributes.has_key?(:'Expires')
        self.expires = attributes[:'Expires']
      end

      if attributes.has_key?(:'ClientDateTime')
        self.client_date_time = attributes[:'ClientDateTime']
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
      automation_action_type_validator = EnumAttributeValidator.new('String', ['EnterGeofence', 'ExitGeofence', 'TapOnNfc'])
      return false unless automation_action_type_validator.valid?(@automation_action_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automation_action_type Object to be assigned
    def automation_action_type=(automation_action_type)
      validator = EnumAttributeValidator.new('String', ['EnterGeofence', 'ExitGeofence', 'TapOnNfc'])
      unless validator.valid?(automation_action_type)
        fail ArgumentError, 'invalid value for "automation_action_type", must be one of #{validator.allowable_values}.'
      end
      @automation_action_type = automation_action_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          org_id == o.org_id &&
          geofence_name == o.geofence_name &&
          coordinates == o.coordinates &&
          user_id == o.user_id &&
          user_name == o.user_name &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          automation_id == o.automation_id &&
          automation_action_type == o.automation_action_type &&
          created == o.created &&
          latitude == o.latitude &&
          longitude == o.longitude &&
          is_processed == o.is_processed &&
          expires == o.expires &&
          client_date_time == o.client_date_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [org_id, geofence_name, coordinates, user_id, user_name, first_name, last_name, automation_id, automation_action_type, created, latitude, longitude, is_processed, expires, client_date_time].hash
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
        temp_model = ChronoSheetsAPI.const_get(type).new
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
