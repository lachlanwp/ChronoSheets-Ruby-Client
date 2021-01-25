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
  class CombinedReportsData
    attr_accessor :series_job_codes

    attr_accessor :series_tasks

    attr_accessor :series_clients

    attr_accessor :series_projects

    attr_accessor :totals_job_codes

    attr_accessor :totals_tasks

    attr_accessor :totals_clients

    attr_accessor :totals_projects

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'series_job_codes' => :'SeriesJobCodes',
        :'series_tasks' => :'SeriesTasks',
        :'series_clients' => :'SeriesClients',
        :'series_projects' => :'SeriesProjects',
        :'totals_job_codes' => :'TotalsJobCodes',
        :'totals_tasks' => :'TotalsTasks',
        :'totals_clients' => :'TotalsClients',
        :'totals_projects' => :'TotalsProjects'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'series_job_codes' => :'Array<JobSeriesReportItem>',
        :'series_tasks' => :'Array<TaskSeriesReportItem>',
        :'series_clients' => :'Array<ClientSeriesReportItem>',
        :'series_projects' => :'Array<ProjectSeriesReportItem>',
        :'totals_job_codes' => :'Array<JobTotalsReportItem>',
        :'totals_tasks' => :'Array<TaskTotalsReportItem>',
        :'totals_clients' => :'Array<ClientTotalsReportItem>',
        :'totals_projects' => :'Array<ProjectTotalsReportItem>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChronoSheetsAPI::CombinedReportsData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChronoSheetsAPI::CombinedReportsData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'series_job_codes')
        if (value = attributes[:'series_job_codes']).is_a?(Array)
          self.series_job_codes = value
        end
      end

      if attributes.key?(:'series_tasks')
        if (value = attributes[:'series_tasks']).is_a?(Array)
          self.series_tasks = value
        end
      end

      if attributes.key?(:'series_clients')
        if (value = attributes[:'series_clients']).is_a?(Array)
          self.series_clients = value
        end
      end

      if attributes.key?(:'series_projects')
        if (value = attributes[:'series_projects']).is_a?(Array)
          self.series_projects = value
        end
      end

      if attributes.key?(:'totals_job_codes')
        if (value = attributes[:'totals_job_codes']).is_a?(Array)
          self.totals_job_codes = value
        end
      end

      if attributes.key?(:'totals_tasks')
        if (value = attributes[:'totals_tasks']).is_a?(Array)
          self.totals_tasks = value
        end
      end

      if attributes.key?(:'totals_clients')
        if (value = attributes[:'totals_clients']).is_a?(Array)
          self.totals_clients = value
        end
      end

      if attributes.key?(:'totals_projects')
        if (value = attributes[:'totals_projects']).is_a?(Array)
          self.totals_projects = value
        end
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
          series_job_codes == o.series_job_codes &&
          series_tasks == o.series_tasks &&
          series_clients == o.series_clients &&
          series_projects == o.series_projects &&
          totals_job_codes == o.totals_job_codes &&
          totals_tasks == o.totals_tasks &&
          totals_clients == o.totals_clients &&
          totals_projects == o.totals_projects
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [series_job_codes, series_tasks, series_clients, series_projects, totals_job_codes, totals_tasks, totals_clients, totals_projects].hash
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
