=begin
#The ChronoSheets API

#<div style='font-size: 14px!important;font-family: Open Sans,sans-serif!important;color: #3b4151!important;'><p>      ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 5 and there are iOS and Android apps available.  Use the ChronoSheets API to create your own custom integrations.  </p>  <p>      First Steps:       <ol>          <li>Make sure you've <a href='/HomeV2/App/sign-up'>signed up to ChronoSheets</a> to get yourself a user account</li>          <li>Confirm your account by following the link sent to your email address.  This will activate your account</li>          <li>Use your username and password to obtain an Auth Token by using the DoLogin method inside the UserProfile section below.  Use the Auth Token as an argument to the other methods</li>          <li>Try different methods in the API Playground to learn about the API</li>          <li>If you're stuck, try the full getting started guide on the <a href='/Home/ApiDocs'>API Toolkit</a> page.</li>      </ol>  </p>  <p>      Further Steps:       <ul>          <li>Create a mobile app (iOS, Android or Windows) using one of the ChronoSheets Mobile SDKs</li>          <li>Create a custom integration with your app using one of the ChronoSheets API Client Libraries.</li>      </ul>      Read more about the API Toolkit on the <a href='/Home/ApiDocs'>API Toolkit</a> page.  </p></div>

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient
  # Fields for inserting a new Vehicle
  class CSInsertVehicleRequest
    # The Name of the Vehicle
    attr_accessor :name

    # The fuel cost / running cost of the Vehicle, measured per kilometer
    attr_accessor :cost_per_kilometer

    # The make of the Vehicle
    attr_accessor :make

    # The model of the Vehicle
    attr_accessor :model

    # The year the Vehicle was made
    attr_accessor :year

    # The Licence Plate Number of the Vehicle
    attr_accessor :licence_plate_number

    # Optionally restrict this Vehicle to only be available to employees within these Organisation Groups
    attr_accessor :linked_org_group_ids


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'cost_per_kilometer' => :'CostPerKilometer',
        :'make' => :'Make',
        :'model' => :'Model',
        :'year' => :'Year',
        :'licence_plate_number' => :'LicencePlateNumber',
        :'linked_org_group_ids' => :'LinkedOrgGroupIds'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'cost_per_kilometer' => :'Float',
        :'make' => :'String',
        :'model' => :'String',
        :'year' => :'String',
        :'licence_plate_number' => :'String',
        :'linked_org_group_ids' => :'Array<Integer>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'CostPerKilometer')
        self.cost_per_kilometer = attributes[:'CostPerKilometer']
      end

      if attributes.has_key?(:'Make')
        self.make = attributes[:'Make']
      end

      if attributes.has_key?(:'Model')
        self.model = attributes[:'Model']
      end

      if attributes.has_key?(:'Year')
        self.year = attributes[:'Year']
      end

      if attributes.has_key?(:'LicencePlateNumber')
        self.licence_plate_number = attributes[:'LicencePlateNumber']
      end

      if attributes.has_key?(:'LinkedOrgGroupIds')
        if (value = attributes[:'LinkedOrgGroupIds']).is_a?(Array)
          self.linked_org_group_ids = value
        end
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
          name == o.name &&
          cost_per_kilometer == o.cost_per_kilometer &&
          make == o.make &&
          model == o.model &&
          year == o.year &&
          licence_plate_number == o.licence_plate_number &&
          linked_org_group_ids == o.linked_org_group_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, cost_per_kilometer, make, model, year, licence_plate_number, linked_org_group_ids].hash
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
