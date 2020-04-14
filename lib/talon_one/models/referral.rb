=begin
#Talon.One API

#The Talon.One API is used to manage applications and campaigns, as well as to integrate with your application. The operations in the _Integration API_ section are used to integrate with our platform, while the other operations are used to manage applications and campaigns.  ### Where is the API?  The API is available at the same hostname as these docs. For example, if you are reading this page at `https://mycompany.talon.one/docs/api/`, the URL for the [updateCustomerProfile][] operation is `https://mycompany.talon.one/v1/customer_profiles/id`  [updateCustomerProfile]: #operation--v1-customer_profiles--integrationId--put 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'date'

module TalonOne
  # 
  class Referral
    # Unique ID for this entity.
    attr_accessor :id

    # The exact moment this entity was created.
    attr_accessor :created

    # ID of the campaign from which the referral received the referral code.
    attr_accessor :campaign_id

    # The Integration Id of the Advocate's Profile
    attr_accessor :advocate_profile_integration_id

    # An optional Integration ID of the Friend's Profile
    attr_accessor :friend_profile_integration_id

    # Timestamp at which point the referral code becomes valid.
    attr_accessor :start_date

    # Expiry date of the referral code. Referral never expires if this is omitted, zero, or negative.
    attr_accessor :expiry_date

    # The actual referral code.
    attr_accessor :code

    # The number of times this referral code has been successfully used.
    attr_accessor :usage_counter

    # The number of times a referral code can be used. This can be set to 0 for no limit, but any campaign usage limits will still apply. 
    attr_accessor :usage_limit

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created' => :'created',
        :'campaign_id' => :'campaignId',
        :'advocate_profile_integration_id' => :'advocateProfileIntegrationId',
        :'friend_profile_integration_id' => :'friendProfileIntegrationId',
        :'start_date' => :'startDate',
        :'expiry_date' => :'expiryDate',
        :'code' => :'code',
        :'usage_counter' => :'usageCounter',
        :'usage_limit' => :'usageLimit'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'created' => :'DateTime',
        :'campaign_id' => :'Integer',
        :'advocate_profile_integration_id' => :'String',
        :'friend_profile_integration_id' => :'String',
        :'start_date' => :'DateTime',
        :'expiry_date' => :'DateTime',
        :'code' => :'String',
        :'usage_counter' => :'Integer',
        :'usage_limit' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TalonOne::Referral` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TalonOne::Referral`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'advocate_profile_integration_id')
        self.advocate_profile_integration_id = attributes[:'advocate_profile_integration_id']
      end

      if attributes.key?(:'friend_profile_integration_id')
        self.friend_profile_integration_id = attributes[:'friend_profile_integration_id']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'expiry_date')
        self.expiry_date = attributes[:'expiry_date']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'usage_counter')
        self.usage_counter = attributes[:'usage_counter']
      end

      if attributes.key?(:'usage_limit')
        self.usage_limit = attributes[:'usage_limit']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      if @campaign_id.nil?
        invalid_properties.push('invalid value for "campaign_id", campaign_id cannot be nil.')
      end

      if @advocate_profile_integration_id.nil?
        invalid_properties.push('invalid value for "advocate_profile_integration_id", advocate_profile_integration_id cannot be nil.')
      end

      if @code.nil?
        invalid_properties.push('invalid value for "code", code cannot be nil.')
      end

      if @code.to_s.length < 4
        invalid_properties.push('invalid value for "code", the character length must be great than or equal to 4.')
      end

      if @usage_counter.nil?
        invalid_properties.push('invalid value for "usage_counter", usage_counter cannot be nil.')
      end

      if @usage_limit.nil?
        invalid_properties.push('invalid value for "usage_limit", usage_limit cannot be nil.')
      end

      if @usage_limit < 0
        invalid_properties.push('invalid value for "usage_limit", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @created.nil?
      return false if @campaign_id.nil?
      return false if @advocate_profile_integration_id.nil?
      return false if @code.nil?
      return false if @code.to_s.length < 4
      return false if @usage_counter.nil?
      return false if @usage_limit.nil?
      return false if @usage_limit < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code)
      if code.nil?
        fail ArgumentError, 'code cannot be nil'
      end

      if code.to_s.length < 4
        fail ArgumentError, 'invalid value for "code", the character length must be great than or equal to 4.'
      end

      @code = code
    end

    # Custom attribute writer method with validation
    # @param [Object] usage_limit Value to be assigned
    def usage_limit=(usage_limit)
      if usage_limit.nil?
        fail ArgumentError, 'usage_limit cannot be nil'
      end

      if usage_limit < 0
        fail ArgumentError, 'invalid value for "usage_limit", must be greater than or equal to 0.'
      end

      @usage_limit = usage_limit
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created == o.created &&
          campaign_id == o.campaign_id &&
          advocate_profile_integration_id == o.advocate_profile_integration_id &&
          friend_profile_integration_id == o.friend_profile_integration_id &&
          start_date == o.start_date &&
          expiry_date == o.expiry_date &&
          code == o.code &&
          usage_counter == o.usage_counter &&
          usage_limit == o.usage_limit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created, campaign_id, advocate_profile_integration_id, friend_profile_integration_id, start_date, expiry_date, code, usage_counter, usage_limit].hash
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
        TalonOne.const_get(type).build_from_hash(value)
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
