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

  class CsApiTimeSlot
    attr_accessor :day_type

    attr_accessor :usual_hour_id

    attr_accessor :start_hour

    attr_accessor :start_minute

    attr_accessor :end_hour

    attr_accessor :end_minute

    attr_accessor :is_valid

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
        :'day_type' => :'DayType',
        :'usual_hour_id' => :'UsualHourId',
        :'start_hour' => :'StartHour',
        :'start_minute' => :'StartMinute',
        :'end_hour' => :'EndHour',
        :'end_minute' => :'EndMinute',
        :'is_valid' => :'IsValid'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'day_type' => :'String',
        :'usual_hour_id' => :'Integer',
        :'start_hour' => :'Integer',
        :'start_minute' => :'Integer',
        :'end_hour' => :'Integer',
        :'end_minute' => :'Integer',
        :'is_valid' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'DayType')
        self.day_type = attributes[:'DayType']
      end

      if attributes.has_key?(:'UsualHourId')
        self.usual_hour_id = attributes[:'UsualHourId']
      end

      if attributes.has_key?(:'StartHour')
        self.start_hour = attributes[:'StartHour']
      end

      if attributes.has_key?(:'StartMinute')
        self.start_minute = attributes[:'StartMinute']
      end

      if attributes.has_key?(:'EndHour')
        self.end_hour = attributes[:'EndHour']
      end

      if attributes.has_key?(:'EndMinute')
        self.end_minute = attributes[:'EndMinute']
      end

      if attributes.has_key?(:'IsValid')
        self.is_valid = attributes[:'IsValid']
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
      day_type_validator = EnumAttributeValidator.new('String', ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"])
      return false unless day_type_validator.valid?(@day_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] day_type Object to be assigned
    def day_type=(day_type)
      validator = EnumAttributeValidator.new('String', ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"])
      unless validator.valid?(day_type)
        fail ArgumentError, "invalid value for 'day_type', must be one of #{validator.allowable_values}."
      end
      @day_type = day_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          day_type == o.day_type &&
          usual_hour_id == o.usual_hour_id &&
          start_hour == o.start_hour &&
          start_minute == o.start_minute &&
          end_hour == o.end_hour &&
          end_minute == o.end_minute &&
          is_valid == o.is_valid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [day_type, usual_hour_id, start_hour, start_minute, end_hour, end_minute, is_valid].hash
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
