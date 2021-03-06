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
  class RawReportItem
    attr_accessor :organisation_id

    attr_accessor :user_id

    attr_accessor :username

    attr_accessor :email_address

    attr_accessor :job_code

    attr_accessor :task_name

    attr_accessor :client_name

    attr_accessor :project_name

    attr_accessor :start_date

    attr_accessor :end_date

    attr_accessor :span_seconds

    attr_accessor :description

    attr_accessor :pay_amount

    attr_accessor :pay_overtime_amount

    attr_accessor :trip_cost

    attr_accessor :trip_distance_meters

    attr_accessor :span_seconds_normal_time

    attr_accessor :span_seconds_overtime

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'organisation_id' => :'OrganisationId',
        :'user_id' => :'UserId',
        :'username' => :'Username',
        :'email_address' => :'EmailAddress',
        :'job_code' => :'JobCode',
        :'task_name' => :'TaskName',
        :'client_name' => :'ClientName',
        :'project_name' => :'ProjectName',
        :'start_date' => :'StartDate',
        :'end_date' => :'EndDate',
        :'span_seconds' => :'SpanSeconds',
        :'description' => :'Description',
        :'pay_amount' => :'PayAmount',
        :'pay_overtime_amount' => :'PayOvertimeAmount',
        :'trip_cost' => :'TripCost',
        :'trip_distance_meters' => :'TripDistanceMeters',
        :'span_seconds_normal_time' => :'SpanSecondsNormalTime',
        :'span_seconds_overtime' => :'SpanSecondsOvertime'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'organisation_id' => :'Integer',
        :'user_id' => :'Integer',
        :'username' => :'String',
        :'email_address' => :'String',
        :'job_code' => :'String',
        :'task_name' => :'String',
        :'client_name' => :'String',
        :'project_name' => :'String',
        :'start_date' => :'Time',
        :'end_date' => :'Time',
        :'span_seconds' => :'Integer',
        :'description' => :'String',
        :'pay_amount' => :'Float',
        :'pay_overtime_amount' => :'Float',
        :'trip_cost' => :'Float',
        :'trip_distance_meters' => :'Float',
        :'span_seconds_normal_time' => :'Integer',
        :'span_seconds_overtime' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChronoSheetsAPI::RawReportItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChronoSheetsAPI::RawReportItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'organisation_id')
        self.organisation_id = attributes[:'organisation_id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'job_code')
        self.job_code = attributes[:'job_code']
      end

      if attributes.key?(:'task_name')
        self.task_name = attributes[:'task_name']
      end

      if attributes.key?(:'client_name')
        self.client_name = attributes[:'client_name']
      end

      if attributes.key?(:'project_name')
        self.project_name = attributes[:'project_name']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'span_seconds')
        self.span_seconds = attributes[:'span_seconds']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'pay_amount')
        self.pay_amount = attributes[:'pay_amount']
      end

      if attributes.key?(:'pay_overtime_amount')
        self.pay_overtime_amount = attributes[:'pay_overtime_amount']
      end

      if attributes.key?(:'trip_cost')
        self.trip_cost = attributes[:'trip_cost']
      end

      if attributes.key?(:'trip_distance_meters')
        self.trip_distance_meters = attributes[:'trip_distance_meters']
      end

      if attributes.key?(:'span_seconds_normal_time')
        self.span_seconds_normal_time = attributes[:'span_seconds_normal_time']
      end

      if attributes.key?(:'span_seconds_overtime')
        self.span_seconds_overtime = attributes[:'span_seconds_overtime']
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
          organisation_id == o.organisation_id &&
          user_id == o.user_id &&
          username == o.username &&
          email_address == o.email_address &&
          job_code == o.job_code &&
          task_name == o.task_name &&
          client_name == o.client_name &&
          project_name == o.project_name &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          span_seconds == o.span_seconds &&
          description == o.description &&
          pay_amount == o.pay_amount &&
          pay_overtime_amount == o.pay_overtime_amount &&
          trip_cost == o.trip_cost &&
          trip_distance_meters == o.trip_distance_meters &&
          span_seconds_normal_time == o.span_seconds_normal_time &&
          span_seconds_overtime == o.span_seconds_overtime
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [organisation_id, user_id, username, email_address, job_code, task_name, client_name, project_name, start_date, end_date, span_seconds, description, pay_amount, pay_overtime_amount, trip_cost, trip_distance_meters, span_seconds_normal_time, span_seconds_overtime].hash
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
