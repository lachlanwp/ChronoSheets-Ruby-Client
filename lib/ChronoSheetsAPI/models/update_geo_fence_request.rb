=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module ChronoSheetsAPI
  # A request object for updating a new geofence
  class UpdateGeoFenceRequest
    # The ID of the geofence you want to update
    attr_accessor :geofence_id

    # The name of the geo fence
    attr_accessor :name

    # A list of coordinates specifying the geofence region
    attr_accessor :fence_coordinates

    # The job code to be used when the person enters/leaves the geofence
    attr_accessor :trigger_job_code_id

    # The task to be used when the person enters/leaves the geofence
    attr_accessor :trigger_task_id

    # Send an alert to a user, specified by their user ID
    attr_accessor :send_alert_to_org_group_id

    # Define when you want the alerts to be setn
    attr_accessor :alert_settings

    # Define how to you want to trigger the timesheet automation
    attr_accessor :trigger_settings

    # The start hour in which this geofence should apply.  After this time, the geofence will be active.
    attr_accessor :start_time_hour

    # The start minute in which this geofence should apply.  After this time, the geofence will be active.
    attr_accessor :start_time_minute

    # The end hour in which this geofence will stop applying.  After this time, the geofence will be inactive.
    attr_accessor :end_time_hour

    # The end minute in which this geofence will stop applying.  After this time, the geofence will be inactive.
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
        :'geofence_id' => :'GeofenceId',
        :'name' => :'Name',
        :'fence_coordinates' => :'FenceCoordinates',
        :'trigger_job_code_id' => :'TriggerJobCodeId',
        :'trigger_task_id' => :'TriggerTaskId',
        :'send_alert_to_org_group_id' => :'SendAlertToOrgGroupId',
        :'alert_settings' => :'AlertSettings',
        :'trigger_settings' => :'TriggerSettings',
        :'start_time_hour' => :'StartTimeHour',
        :'start_time_minute' => :'StartTimeMinute',
        :'end_time_hour' => :'EndTimeHour',
        :'end_time_minute' => :'EndTimeMinute'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'geofence_id' => :'Integer',
        :'name' => :'String',
        :'fence_coordinates' => :'Array<BasicCoordinate>',
        :'trigger_job_code_id' => :'Integer',
        :'trigger_task_id' => :'Integer',
        :'send_alert_to_org_group_id' => :'Integer',
        :'alert_settings' => :'String',
        :'trigger_settings' => :'String',
        :'start_time_hour' => :'Integer',
        :'start_time_minute' => :'Integer',
        :'end_time_hour' => :'Integer',
        :'end_time_minute' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChronoSheetsAPI::UpdateGeoFenceRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChronoSheetsAPI::UpdateGeoFenceRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'geofence_id')
        self.geofence_id = attributes[:'geofence_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'fence_coordinates')
        if (value = attributes[:'fence_coordinates']).is_a?(Array)
          self.fence_coordinates = value
        end
      end

      if attributes.key?(:'trigger_job_code_id')
        self.trigger_job_code_id = attributes[:'trigger_job_code_id']
      end

      if attributes.key?(:'trigger_task_id')
        self.trigger_task_id = attributes[:'trigger_task_id']
      end

      if attributes.key?(:'send_alert_to_org_group_id')
        self.send_alert_to_org_group_id = attributes[:'send_alert_to_org_group_id']
      end

      if attributes.key?(:'alert_settings')
        self.alert_settings = attributes[:'alert_settings']
      end

      if attributes.key?(:'trigger_settings')
        self.trigger_settings = attributes[:'trigger_settings']
      end

      if attributes.key?(:'start_time_hour')
        self.start_time_hour = attributes[:'start_time_hour']
      end

      if attributes.key?(:'start_time_minute')
        self.start_time_minute = attributes[:'start_time_minute']
      end

      if attributes.key?(:'end_time_hour')
        self.end_time_hour = attributes[:'end_time_hour']
      end

      if attributes.key?(:'end_time_minute')
        self.end_time_minute = attributes[:'end_time_minute']
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
      alert_settings_validator = EnumAttributeValidator.new('String', ["None", "SendWhenEntering", "SendWhenExiting", "SendWhenEnteringOrExiting"])
      return false unless alert_settings_validator.valid?(@alert_settings)
      trigger_settings_validator = EnumAttributeValidator.new('String', ["None", "StartTimesheetWhenEntering", "StopTimesheetWhenEntering", "StartOnEnterStopOnLeave"])
      return false unless trigger_settings_validator.valid?(@trigger_settings)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alert_settings Object to be assigned
    def alert_settings=(alert_settings)
      validator = EnumAttributeValidator.new('String', ["None", "SendWhenEntering", "SendWhenExiting", "SendWhenEnteringOrExiting"])
      unless validator.valid?(alert_settings)
        fail ArgumentError, "invalid value for \"alert_settings\", must be one of #{validator.allowable_values}."
      end
      @alert_settings = alert_settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trigger_settings Object to be assigned
    def trigger_settings=(trigger_settings)
      validator = EnumAttributeValidator.new('String', ["None", "StartTimesheetWhenEntering", "StopTimesheetWhenEntering", "StartOnEnterStopOnLeave"])
      unless validator.valid?(trigger_settings)
        fail ArgumentError, "invalid value for \"trigger_settings\", must be one of #{validator.allowable_values}."
      end
      @trigger_settings = trigger_settings
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          geofence_id == o.geofence_id &&
          name == o.name &&
          fence_coordinates == o.fence_coordinates &&
          trigger_job_code_id == o.trigger_job_code_id &&
          trigger_task_id == o.trigger_task_id &&
          send_alert_to_org_group_id == o.send_alert_to_org_group_id &&
          alert_settings == o.alert_settings &&
          trigger_settings == o.trigger_settings &&
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
    # @return [Integer] Hash code
    def hash
      [geofence_id, name, fence_coordinates, trigger_job_code_id, trigger_task_id, send_alert_to_org_group_id, alert_settings, trigger_settings, start_time_hour, start_time_minute, end_time_hour, end_time_minute].hash
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
