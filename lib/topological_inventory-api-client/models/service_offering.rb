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
  class ServiceOffering
    # ID of the resource (read only)
    attr_accessor :id

    attr_accessor :name

    attr_accessor :description

    attr_accessor :display_name

    attr_accessor :distributor

    attr_accessor :documentation_url

    attr_accessor :long_description

    attr_accessor :support_url

    # The native reference used by the Source to refer to this object
    attr_accessor :source_ref

    # Extra information about this object in JSON format
    attr_accessor :extra

    attr_accessor :source_created_at

    attr_accessor :source_deleted_at

    # ID of the resource (read only)
    attr_accessor :source_id

    # ID of the resource (read only)
    attr_accessor :tenant_id

    # ID of the resource (read only)
    attr_accessor :service_offering_icon_id

    attr_accessor :taggings

    attr_accessor :archived_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'description' => :'description',
        :'display_name' => :'display_name',
        :'distributor' => :'distributor',
        :'documentation_url' => :'documentation_url',
        :'long_description' => :'long_description',
        :'support_url' => :'support_url',
        :'source_ref' => :'source_ref',
        :'extra' => :'extra',
        :'source_created_at' => :'source_created_at',
        :'source_deleted_at' => :'source_deleted_at',
        :'source_id' => :'source_id',
        :'tenant_id' => :'tenant_id',
        :'service_offering_icon_id' => :'service_offering_icon_id',
        :'taggings' => :'taggings',
        :'archived_at' => :'archived_at'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'display_name' => :'String',
        :'distributor' => :'String',
        :'documentation_url' => :'String',
        :'long_description' => :'String',
        :'support_url' => :'String',
        :'source_ref' => :'String',
        :'extra' => :'String',
        :'source_created_at' => :'DateTime',
        :'source_deleted_at' => :'DateTime',
        :'source_id' => :'String',
        :'tenant_id' => :'String',
        :'service_offering_icon_id' => :'String',
        :'taggings' => :'Array<Tagging>',
        :'archived_at' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'distributor')
        self.distributor = attributes[:'distributor']
      end

      if attributes.has_key?(:'documentation_url')
        self.documentation_url = attributes[:'documentation_url']
      end

      if attributes.has_key?(:'long_description')
        self.long_description = attributes[:'long_description']
      end

      if attributes.has_key?(:'support_url')
        self.support_url = attributes[:'support_url']
      end

      if attributes.has_key?(:'source_ref')
        self.source_ref = attributes[:'source_ref']
      end

      if attributes.has_key?(:'extra')
        self.extra = attributes[:'extra']
      end

      if attributes.has_key?(:'source_created_at')
        self.source_created_at = attributes[:'source_created_at']
      end

      if attributes.has_key?(:'source_deleted_at')
        self.source_deleted_at = attributes[:'source_deleted_at']
      end

      if attributes.has_key?(:'source_id')
        self.source_id = attributes[:'source_id']
      end

      if attributes.has_key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.has_key?(:'service_offering_icon_id')
        self.service_offering_icon_id = attributes[:'service_offering_icon_id']
      end

      if attributes.has_key?(:'taggings')
        if (value = attributes[:'taggings']).is_a?(Array)
          self.taggings = value
        end
      end

      if attributes.has_key?(:'archived_at')
        self.archived_at = attributes[:'archived_at']
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

      if !@tenant_id.nil? && @tenant_id !~ Regexp.new(/^\d+$/)
        invalid_properties.push('invalid value for "tenant_id", must conform to the pattern /^\d+$/.')
      end

      if !@service_offering_icon_id.nil? && @service_offering_icon_id !~ Regexp.new(/^\d+$/)
        invalid_properties.push('invalid value for "service_offering_icon_id", must conform to the pattern /^\d+$/.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id !~ Regexp.new(/^\d+$/)
      return false if !@source_id.nil? && @source_id !~ Regexp.new(/^\d+$/)
      return false if !@tenant_id.nil? && @tenant_id !~ Regexp.new(/^\d+$/)
      return false if !@service_offering_icon_id.nil? && @service_offering_icon_id !~ Regexp.new(/^\d+$/)
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

    # Custom attribute writer method with validation
    # @param [Object] tenant_id Value to be assigned
    def tenant_id=(tenant_id)
      if !tenant_id.nil? && tenant_id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, 'invalid value for "tenant_id", must conform to the pattern /^\d+$/.'
      end

      @tenant_id = tenant_id
    end

    # Custom attribute writer method with validation
    # @param [Object] service_offering_icon_id Value to be assigned
    def service_offering_icon_id=(service_offering_icon_id)
      if !service_offering_icon_id.nil? && service_offering_icon_id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, 'invalid value for "service_offering_icon_id", must conform to the pattern /^\d+$/.'
      end

      @service_offering_icon_id = service_offering_icon_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          display_name == o.display_name &&
          distributor == o.distributor &&
          documentation_url == o.documentation_url &&
          long_description == o.long_description &&
          support_url == o.support_url &&
          source_ref == o.source_ref &&
          extra == o.extra &&
          source_created_at == o.source_created_at &&
          source_deleted_at == o.source_deleted_at &&
          source_id == o.source_id &&
          tenant_id == o.tenant_id &&
          service_offering_icon_id == o.service_offering_icon_id &&
          taggings == o.taggings &&
          archived_at == o.archived_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, description, display_name, distributor, documentation_url, long_description, support_url, source_ref, extra, source_created_at, source_deleted_at, source_id, tenant_id, service_offering_icon_id, taggings, archived_at].hash
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
