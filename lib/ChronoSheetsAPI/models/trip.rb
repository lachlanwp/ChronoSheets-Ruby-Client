=begin
#ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 3 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  Before starting, sign up for a ChronoSheets account at <a target='_BLANK' href='http://tsheets.xyz/signup'>http://tsheets.xyz/signup</a>.  </p></div><div id='cs-extra-info'></div>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'date'
require 'time'

module ChronoSheetsAPI
  class Trip
    attr_accessor :trip_id

    attr_accessor :timesheet_id

    attr_accessor :vehicle_id

    attr_accessor :user_id

    attr_accessor :org_id

    attr_accessor :mobile_platform

    attr_accessor :start_date

    attr_accessor :end_date

    attr_accessor :vehicle_name

    attr_accessor :vehicle_make

    attr_accessor :vehicle_model

    attr_accessor :vehicle_year

    attr_accessor :cost_per_kilometer

    attr_accessor :trip_total_cost

    attr_accessor :total_trip_distance_meters

    attr_accessor :start_address

    attr_accessor :end_address

    attr_accessor :path_coordinates

    attr_accessor :cache_expiry_date

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
        :'trip_id' => :'TripId',
        :'timesheet_id' => :'TimesheetId',
        :'vehicle_id' => :'VehicleId',
        :'user_id' => :'UserId',
        :'org_id' => :'OrgId',
        :'mobile_platform' => :'MobilePlatform',
        :'start_date' => :'StartDate',
        :'end_date' => :'EndDate',
        :'vehicle_name' => :'VehicleName',
        :'vehicle_make' => :'VehicleMake',
        :'vehicle_model' => :'VehicleModel',
        :'vehicle_year' => :'VehicleYear',
        :'cost_per_kilometer' => :'CostPerKilometer',
        :'trip_total_cost' => :'TripTotalCost',
        :'total_trip_distance_meters' => :'TotalTripDistanceMeters',
        :'start_address' => :'StartAddress',
        :'end_address' => :'EndAddress',
        :'path_coordinates' => :'PathCoordinates',
        :'cache_expiry_date' => :'CacheExpiryDate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'trip_id' => :'Integer',
        :'timesheet_id' => :'Integer',
        :'vehicle_id' => :'Integer',
        :'user_id' => :'Integer',
        :'org_id' => :'Integer',
        :'mobile_platform' => :'String',
        :'start_date' => :'Time',
        :'end_date' => :'Time',
        :'vehicle_name' => :'String',
        :'vehicle_make' => :'String',
        :'vehicle_model' => :'String',
        :'vehicle_year' => :'String',
        :'cost_per_kilometer' => :'Float',
        :'trip_total_cost' => :'Float',
        :'total_trip_distance_meters' => :'Float',
        :'start_address' => :'String',
        :'end_address' => :'String',
        :'path_coordinates' => :'Array<TripCoordinate>',
        :'cache_expiry_date' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChronoSheetsAPI::Trip` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChronoSheetsAPI::Trip`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'trip_id')
        self.trip_id = attributes[:'trip_id']
      end

      if attributes.key?(:'timesheet_id')
        self.timesheet_id = attributes[:'timesheet_id']
      end

      if attributes.key?(:'vehicle_id')
        self.vehicle_id = attributes[:'vehicle_id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'org_id')
        self.org_id = attributes[:'org_id']
      end

      if attributes.key?(:'mobile_platform')
        self.mobile_platform = attributes[:'mobile_platform']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'vehicle_name')
        self.vehicle_name = attributes[:'vehicle_name']
      end

      if attributes.key?(:'vehicle_make')
        self.vehicle_make = attributes[:'vehicle_make']
      end

      if attributes.key?(:'vehicle_model')
        self.vehicle_model = attributes[:'vehicle_model']
      end

      if attributes.key?(:'vehicle_year')
        self.vehicle_year = attributes[:'vehicle_year']
      end

      if attributes.key?(:'cost_per_kilometer')
        self.cost_per_kilometer = attributes[:'cost_per_kilometer']
      end

      if attributes.key?(:'trip_total_cost')
        self.trip_total_cost = attributes[:'trip_total_cost']
      end

      if attributes.key?(:'total_trip_distance_meters')
        self.total_trip_distance_meters = attributes[:'total_trip_distance_meters']
      end

      if attributes.key?(:'start_address')
        self.start_address = attributes[:'start_address']
      end

      if attributes.key?(:'end_address')
        self.end_address = attributes[:'end_address']
      end

      if attributes.key?(:'path_coordinates')
        if (value = attributes[:'path_coordinates']).is_a?(Array)
          self.path_coordinates = value
        end
      end

      if attributes.key?(:'cache_expiry_date')
        self.cache_expiry_date = attributes[:'cache_expiry_date']
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
      mobile_platform_validator = EnumAttributeValidator.new('String', ["Unknown", "iOS", "Android"])
      return false unless mobile_platform_validator.valid?(@mobile_platform)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mobile_platform Object to be assigned
    def mobile_platform=(mobile_platform)
      validator = EnumAttributeValidator.new('String', ["Unknown", "iOS", "Android"])
      unless validator.valid?(mobile_platform)
        fail ArgumentError, "invalid value for \"mobile_platform\", must be one of #{validator.allowable_values}."
      end
      @mobile_platform = mobile_platform
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          trip_id == o.trip_id &&
          timesheet_id == o.timesheet_id &&
          vehicle_id == o.vehicle_id &&
          user_id == o.user_id &&
          org_id == o.org_id &&
          mobile_platform == o.mobile_platform &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          vehicle_name == o.vehicle_name &&
          vehicle_make == o.vehicle_make &&
          vehicle_model == o.vehicle_model &&
          vehicle_year == o.vehicle_year &&
          cost_per_kilometer == o.cost_per_kilometer &&
          trip_total_cost == o.trip_total_cost &&
          total_trip_distance_meters == o.total_trip_distance_meters &&
          start_address == o.start_address &&
          end_address == o.end_address &&
          path_coordinates == o.path_coordinates &&
          cache_expiry_date == o.cache_expiry_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [trip_id, timesheet_id, vehicle_id, user_id, org_id, mobile_platform, start_date, end_date, vehicle_name, vehicle_make, vehicle_model, vehicle_year, cost_per_kilometer, trip_total_cost, total_trip_distance_meters, start_address, end_address, path_coordinates, cache_expiry_date].hash
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
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = ChronoSheetsAPI.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
