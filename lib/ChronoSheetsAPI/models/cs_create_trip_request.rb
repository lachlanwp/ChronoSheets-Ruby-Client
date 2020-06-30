=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module ChronoSheetsAPI
  # Contains fields for creating a Trip
  class CSCreateTripRequest
    # The associated Timesheet record Id.  The Trip will be linked to the Timesheet with this TimesheetId
    attr_accessor :timesheet_id

    # The associated Vehicle Id.  The Trip will show that this Vehicle was used
    attr_accessor :vehicle_id

    # A CSV of GPS path co-ordinates.  Format example: -37.8433562,144.7226188;[Lat1],[Long1];........[LatN],[LongN]
    attr_accessor :path_coords_string_csv

    # The total distance of the Trip
    attr_accessor :distance_meters

    # The Mobile platform that the Trip was recorded on
    attr_accessor :mobile_platform

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
        :'timesheet_id' => :'TimesheetId',
        :'vehicle_id' => :'VehicleId',
        :'path_coords_string_csv' => :'PathCoordsStringCsv',
        :'distance_meters' => :'DistanceMeters',
        :'mobile_platform' => :'MobilePlatform'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'timesheet_id' => :'Integer',
        :'vehicle_id' => :'Integer',
        :'path_coords_string_csv' => :'String',
        :'distance_meters' => :'Float',
        :'mobile_platform' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'TimesheetId')
        self.timesheet_id = attributes[:'TimesheetId']
      end

      if attributes.has_key?(:'VehicleId')
        self.vehicle_id = attributes[:'VehicleId']
      end

      if attributes.has_key?(:'PathCoordsStringCsv')
        self.path_coords_string_csv = attributes[:'PathCoordsStringCsv']
      end

      if attributes.has_key?(:'DistanceMeters')
        self.distance_meters = attributes[:'DistanceMeters']
      end

      if attributes.has_key?(:'MobilePlatform')
        self.mobile_platform = attributes[:'MobilePlatform']
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
      mobile_platform_validator = EnumAttributeValidator.new('String', ['Unknown', 'iOS', 'Android'])
      return false unless mobile_platform_validator.valid?(@mobile_platform)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mobile_platform Object to be assigned
    def mobile_platform=(mobile_platform)
      validator = EnumAttributeValidator.new('String', ['Unknown', 'iOS', 'Android'])
      unless validator.valid?(mobile_platform)
        fail ArgumentError, 'invalid value for "mobile_platform", must be one of #{validator.allowable_values}.'
      end
      @mobile_platform = mobile_platform
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          timesheet_id == o.timesheet_id &&
          vehicle_id == o.vehicle_id &&
          path_coords_string_csv == o.path_coords_string_csv &&
          distance_meters == o.distance_meters &&
          mobile_platform == o.mobile_platform
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [timesheet_id, vehicle_id, path_coords_string_csv, distance_meters, mobile_platform].hash
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
