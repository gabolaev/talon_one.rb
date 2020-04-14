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
  class ApplicationSession
    # Unique ID for this entity.
    attr_accessor :id

    # The exact moment this entity was created. The exact moment this entity was created.
    attr_accessor :created

    # The ID of the application that owns this entity.
    attr_accessor :application_id

    # The globally unique Talon.One ID of the customer that created this entity.
    attr_accessor :profile_id

    # The ID used for this entity in the application system.
    attr_accessor :integration_id

    # Integration ID of the customer for the session.
    attr_accessor :profileintegrationid

    # Any coupon code entered.
    attr_accessor :coupon

    # Any referral code entered.
    attr_accessor :referral

    # Indicating if the customer session is in progress (\"open\"), \"closed\", or \"cancelled\".
    attr_accessor :state

    # Serialized JSON representation.
    attr_accessor :cart_items

    # A map of labelled discount values, in the same currency as the session.
    attr_accessor :discounts

    # The total sum of the session before any discounts applied.
    attr_accessor :total

    # Arbitrary properties associated with this item
    attr_accessor :attributes

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
        :'id' => :'id',
        :'created' => :'created',
        :'application_id' => :'applicationId',
        :'profile_id' => :'profileId',
        :'integration_id' => :'integrationId',
        :'profileintegrationid' => :'profileintegrationid',
        :'coupon' => :'coupon',
        :'referral' => :'referral',
        :'state' => :'state',
        :'cart_items' => :'cartItems',
        :'discounts' => :'discounts',
        :'total' => :'total',
        :'attributes' => :'attributes'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'created' => :'DateTime',
        :'application_id' => :'Integer',
        :'profile_id' => :'Integer',
        :'integration_id' => :'String',
        :'profileintegrationid' => :'String',
        :'coupon' => :'String',
        :'referral' => :'String',
        :'state' => :'String',
        :'cart_items' => :'Array<CartItem>',
        :'discounts' => :'Hash<String, Float>',
        :'total' => :'Float',
        :'attributes' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TalonOne::ApplicationSession` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TalonOne::ApplicationSession`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'application_id')
        self.application_id = attributes[:'application_id']
      end

      if attributes.key?(:'profile_id')
        self.profile_id = attributes[:'profile_id']
      end

      if attributes.key?(:'integration_id')
        self.integration_id = attributes[:'integration_id']
      end

      if attributes.key?(:'profileintegrationid')
        self.profileintegrationid = attributes[:'profileintegrationid']
      end

      if attributes.key?(:'coupon')
        self.coupon = attributes[:'coupon']
      end

      if attributes.key?(:'referral')
        self.referral = attributes[:'referral']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'cart_items')
        if (value = attributes[:'cart_items']).is_a?(Array)
          self.cart_items = value
        end
      end

      if attributes.key?(:'discounts')
        if (value = attributes[:'discounts']).is_a?(Hash)
          self.discounts = value
        end
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'attributes')
        self.attributes = attributes[:'attributes']
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

      if @application_id.nil?
        invalid_properties.push('invalid value for "application_id", application_id cannot be nil.')
      end

      if @integration_id.nil?
        invalid_properties.push('invalid value for "integration_id", integration_id cannot be nil.')
      end

      if @coupon.nil?
        invalid_properties.push('invalid value for "coupon", coupon cannot be nil.')
      end

      if @referral.nil?
        invalid_properties.push('invalid value for "referral", referral cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @cart_items.nil?
        invalid_properties.push('invalid value for "cart_items", cart_items cannot be nil.')
      end

      if @discounts.nil?
        invalid_properties.push('invalid value for "discounts", discounts cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @created.nil?
      return false if @application_id.nil?
      return false if @integration_id.nil?
      return false if @coupon.nil?
      return false if @referral.nil?
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["open", "closed", "cancelled"])
      return false unless state_validator.valid?(@state)
      return false if @cart_items.nil?
      return false if @discounts.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["open", "closed", "cancelled"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for \"state\", must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created == o.created &&
          application_id == o.application_id &&
          profile_id == o.profile_id &&
          integration_id == o.integration_id &&
          profileintegrationid == o.profileintegrationid &&
          coupon == o.coupon &&
          referral == o.referral &&
          state == o.state &&
          cart_items == o.cart_items &&
          discounts == o.discounts &&
          total == o.total &&
          attributes == o.attributes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created, application_id, profile_id, integration_id, profileintegrationid, coupon, referral, state, cart_items, discounts, total, attributes].hash
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
