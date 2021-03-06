=begin
#Topological Inventory

#Topological Inventory

OpenAPI spec version: 0.1.0
Contact: you@your-company.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module TopologicalInventoryApiClient
  class Flavor
    attr_accessor :archived_at

    # Number of CPUs
    attr_accessor :cpus

    attr_accessor :created_at

    # The number of default disks
    attr_accessor :disk_count

    # Size of the default disks in bytes
    attr_accessor :disk_size

    attr_accessor :extra

    # ID of the resource
    attr_accessor :id

    attr_accessor :last_seen_at

    # Amount of RAM in bytes
    attr_accessor :memory

    attr_accessor :name

    # ID of the resource
    attr_accessor :source_id

    attr_accessor :source_ref

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'archived_at' => :'archived_at',
        :'cpus' => :'cpus',
        :'created_at' => :'created_at',
        :'disk_count' => :'disk_count',
        :'disk_size' => :'disk_size',
        :'extra' => :'extra',
        :'id' => :'id',
        :'last_seen_at' => :'last_seen_at',
        :'memory' => :'memory',
        :'name' => :'name',
        :'source_id' => :'source_id',
        :'source_ref' => :'source_ref',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'archived_at' => :'DateTime',
        :'cpus' => :'Integer',
        :'created_at' => :'DateTime',
        :'disk_count' => :'Integer',
        :'disk_size' => :'Integer',
        :'extra' => :'String',
        :'id' => :'String',
        :'last_seen_at' => :'DateTime',
        :'memory' => :'Integer',
        :'name' => :'String',
        :'source_id' => :'String',
        :'source_ref' => :'String',
        :'updated_at' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'archived_at')
        self.archived_at = attributes[:'archived_at']
      end

      if attributes.has_key?(:'cpus')
        self.cpus = attributes[:'cpus']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'disk_count')
        self.disk_count = attributes[:'disk_count']
      end

      if attributes.has_key?(:'disk_size')
        self.disk_size = attributes[:'disk_size']
      end

      if attributes.has_key?(:'extra')
        self.extra = attributes[:'extra']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'last_seen_at')
        self.last_seen_at = attributes[:'last_seen_at']
      end

      if attributes.has_key?(:'memory')
        self.memory = attributes[:'memory']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'source_id')
        self.source_id = attributes[:'source_id']
      end

      if attributes.has_key?(:'source_ref')
        self.source_ref = attributes[:'source_ref']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@id.nil? && @id !~ Regexp.new(/^\d+$/)
        invalid_properties.push('invalid value for "id", must conform to the pattern /^\d+$/.')
      end

      if !@source_id.nil? && @source_id !~ Regexp.new(/^\d+$/)
        invalid_properties.push('invalid value for "source_id", must conform to the pattern /^\d+$/.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id !~ Regexp.new(/^\d+$/)
      return false if !@source_id.nil? && @source_id !~ Regexp.new(/^\d+$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if !id.nil? && id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, 'invalid value for "id", must conform to the pattern /^\d+$/.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] source_id Value to be assigned
    def source_id=(source_id)
      if !source_id.nil? && source_id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, 'invalid value for "source_id", must conform to the pattern /^\d+$/.'
      end

      @source_id = source_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          archived_at == o.archived_at &&
          cpus == o.cpus &&
          created_at == o.created_at &&
          disk_count == o.disk_count &&
          disk_size == o.disk_size &&
          extra == o.extra &&
          id == o.id &&
          last_seen_at == o.last_seen_at &&
          memory == o.memory &&
          name == o.name &&
          source_id == o.source_id &&
          source_ref == o.source_ref &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [archived_at, cpus, created_at, disk_count, disk_size, extra, id, last_seen_at, memory, name, source_id, source_ref, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
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
        temp_model = TopologicalInventoryApiClient.const_get(type).new
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
