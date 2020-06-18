=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module ChronoSheetsAPI
  class CSGeofence
    attr_accessor :geo_fencing_id

    attr_accessor :org_id

    attr_accessor :created_by_user_id

    attr_accessor :last_updated_by_user_id

    attr_accessor :name

    attr_accessor :location_name

    attr_accessor :coordinates

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :trigger_job_code_id

    attr_accessor :trigger_task_id

    attr_accessor :trigger_settings

    attr_accessor :alert_to_org_group_id

    attr_accessor :alert_settings

    attr_accessor :start_time_hour

    attr_accessor :start_time_minute

    attr_accessor :end_time_hour

    attr_accessor :end_time_minute

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
        :'geo_fencing_id' => :'GeoFencingId',
        :'org_id' => :'OrgId',
        :'created_by_user_id' => :'CreatedByUserId',
        :'last_updated_by_user_id' => :'LastUpdatedByUserId',
        :'name' => :'Name',
        :'location_name' => :'LocationName',
        :'coordinates' => :'Coordinates',
        :'created_at' => :'CreatedAt',
        :'updated_at' => :'UpdatedAt',
        :'trigger_job_code_id' => :'TriggerJobCodeId',
        :'trigger_task_id' => :'TriggerTaskId',
        :'trigger_settings' => :'TriggerSettings',
        :'alert_to_org_group_id' => :'AlertToOrgGroupId',
        :'alert_settings' => :'AlertSettings',
        :'start_time_hour' => :'StartTimeHour',
        :'start_time_minute' => :'StartTimeMinute',
        :'end_time_hour' => :'EndTimeHour',
        :'end_time_minute' => :'EndTimeMinute'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'geo_fencing_id' => :'Integer',
        :'org_id' => :'Integer',
        :'created_by_user_id' => :'Integer',
        :'last_updated_by_user_id' => :'Integer',
        :'name' => :'String',
        :'location_name' => :'String',
        :'coordinates' => :'Array<CSBasicCoordinate>',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'trigger_job_code_id' => :'Integer',
        :'trigger_task_id' => :'Integer',
        :'trigger_settings' => :'String',
        :'alert_to_org_group_id' => :'Integer',
        :'alert_settings' => :'String',
        :'start_time_hour' => :'Integer',
        :'start_time_minute' => :'Integer',
        :'end_time_hour' => :'Integer',
        :'end_time_minute' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'GeoFencingId')
        self.geo_fencing_id = attributes[:'GeoFencingId']
      end

      if attributes.has_key?(:'OrgId')
        self.org_id = attributes[:'OrgId']
      end

      if attributes.has_key?(:'CreatedByUserId')
        self.created_by_user_id = attributes[:'CreatedByUserId']
      end

      if attributes.has_key?(:'LastUpdatedByUserId')
        self.last_updated_by_user_id = attributes[:'LastUpdatedByUserId']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'LocationName')
        self.location_name = attributes[:'LocationName']
      end

      if attributes.has_key?(:'Coordinates')
        if (value = attributes[:'Coordinates']).is_a?(Array)
          self.coordinates = value
        end
      end

      if attributes.has_key?(:'CreatedAt')
        self.created_at = attributes[:'CreatedAt']
      end

      if attributes.has_key?(:'UpdatedAt')
        self.updated_at = attributes[:'UpdatedAt']
      end

      if attributes.has_key?(:'TriggerJobCodeId')
        self.trigger_job_code_id = attributes[:'TriggerJobCodeId']
      end

      if attributes.has_key?(:'TriggerTaskId')
        self.trigger_task_id = attributes[:'TriggerTaskId']
      end

      if attributes.has_key?(:'TriggerSettings')
        self.trigger_settings = attributes[:'TriggerSettings']
      end

      if attributes.has_key?(:'AlertToOrgGroupId')
        self.alert_to_org_group_id = attributes[:'AlertToOrgGroupId']
      end

      if attributes.has_key?(:'AlertSettings')
        self.alert_settings = attributes[:'AlertSettings']
      end

      if attributes.has_key?(:'StartTimeHour')
        self.start_time_hour = attributes[:'StartTimeHour']
      end

      if attributes.has_key?(:'StartTimeMinute')
        self.start_time_minute = attributes[:'StartTimeMinute']
      end

      if attributes.has_key?(:'EndTimeHour')
        self.end_time_hour = attributes[:'EndTimeHour']
      end

      if attributes.has_key?(:'EndTimeMinute')
        self.end_time_minute = attributes[:'EndTimeMinute']
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
      trigger_settings_validator = EnumAttributeValidator.new('String', ['None', 'StartTimesheetWhenEntering', 'StopTimesheetWhenEntering', 'StartOnEnterStopOnLeave'])
      return false unless trigger_settings_validator.valid?(@trigger_settings)
      alert_settings_validator = EnumAttributeValidator.new('String', ['None', 'SendWhenEntering', 'SendWhenExiting', 'SendWhenEnteringOrExiting'])
      return false unless alert_settings_validator.valid?(@alert_settings)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trigger_settings Object to be assigned
    def trigger_settings=(trigger_settings)
      validator = EnumAttributeValidator.new('String', ['None', 'StartTimesheetWhenEntering', 'StopTimesheetWhenEntering', 'StartOnEnterStopOnLeave'])
      unless validator.valid?(trigger_settings)
        fail ArgumentError, 'invalid value for "trigger_settings", must be one of #{validator.allowable_values}.'
      end
      @trigger_settings = trigger_settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alert_settings Object to be assigned
    def alert_settings=(alert_settings)
      validator = EnumAttributeValidator.new('String', ['None', 'SendWhenEntering', 'SendWhenExiting', 'SendWhenEnteringOrExiting'])
      unless validator.valid?(alert_settings)
        fail ArgumentError, 'invalid value for "alert_settings", must be one of #{validator.allowable_values}.'
      end
      @alert_settings = alert_settings
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          geo_fencing_id == o.geo_fencing_id &&
          org_id == o.org_id &&
          created_by_user_id == o.created_by_user_id &&
          last_updated_by_user_id == o.last_updated_by_user_id &&
          name == o.name &&
          location_name == o.location_name &&
          coordinates == o.coordinates &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          trigger_job_code_id == o.trigger_job_code_id &&
          trigger_task_id == o.trigger_task_id &&
          trigger_settings == o.trigger_settings &&
          alert_to_org_group_id == o.alert_to_org_group_id &&
          alert_settings == o.alert_settings &&
          start_time_hour == o.start_time_hour &&
          start_time_minute == o.start_time_minute &&
          end_time_hour == o.end_time_hour &&
          end_time_minute == o.end_time_minute
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [geo_fencing_id, org_id, created_by_user_id, last_updated_by_user_id, name, location_name, coordinates, created_at, updated_at, trigger_job_code_id, trigger_task_id, trigger_settings, alert_to_org_group_id, alert_settings, start_time_hour, start_time_minute, end_time_hour, end_time_minute].hash
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
