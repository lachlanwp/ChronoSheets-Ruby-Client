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

  class CsApiJobSeriesReportItem
    attr_accessor :start_date

    attr_accessor :end_date

    attr_accessor :job_id

    attr_accessor :client_id

    attr_accessor :client_name

    attr_accessor :project_id

    attr_accessor :project_name

    attr_accessor :span_seconds

    attr_accessor :job_code


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'start_date' => :'StartDate',
        :'end_date' => :'EndDate',
        :'job_id' => :'JobId',
        :'client_id' => :'ClientId',
        :'client_name' => :'ClientName',
        :'project_id' => :'ProjectId',
        :'project_name' => :'ProjectName',
        :'span_seconds' => :'SpanSeconds',
        :'job_code' => :'JobCode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'start_date' => :'DateTime',
        :'end_date' => :'DateTime',
        :'job_id' => :'Integer',
        :'client_id' => :'Integer',
        :'client_name' => :'String',
        :'project_id' => :'Integer',
        :'project_name' => :'String',
        :'span_seconds' => :'Integer',
        :'job_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'StartDate')
        self.start_date = attributes[:'StartDate']
      end

      if attributes.has_key?(:'EndDate')
        self.end_date = attributes[:'EndDate']
      end

      if attributes.has_key?(:'JobId')
        self.job_id = attributes[:'JobId']
      end

      if attributes.has_key?(:'ClientId')
        self.client_id = attributes[:'ClientId']
      end

      if attributes.has_key?(:'ClientName')
        self.client_name = attributes[:'ClientName']
      end

      if attributes.has_key?(:'ProjectId')
        self.project_id = attributes[:'ProjectId']
      end

      if attributes.has_key?(:'ProjectName')
        self.project_name = attributes[:'ProjectName']
      end

      if attributes.has_key?(:'SpanSeconds')
        self.span_seconds = attributes[:'SpanSeconds']
      end

      if attributes.has_key?(:'JobCode')
        self.job_code = attributes[:'JobCode']
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
          start_date == o.start_date &&
          end_date == o.end_date &&
          job_id == o.job_id &&
          client_id == o.client_id &&
          client_name == o.client_name &&
          project_id == o.project_id &&
          project_name == o.project_name &&
          span_seconds == o.span_seconds &&
          job_code == o.job_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [start_date, end_date, job_id, client_id, client_name, project_id, project_name, span_seconds, job_code].hash
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
