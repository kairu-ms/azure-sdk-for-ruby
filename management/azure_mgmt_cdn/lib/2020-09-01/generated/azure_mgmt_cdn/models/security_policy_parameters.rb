# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # The json object containing security policy parameters
    #
    class SecurityPolicyParameters

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["WebApplicationFirewall"] = "SecurityPolicyWebApplicationFirewallParameters"

      def initialize
        @type = "SecurityPolicyParameters"
      end

      attr_accessor :type


      #
      # Mapper for SecurityPolicyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityPolicyParameters',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'SecurityPolicyParameters',
            class_name: 'SecurityPolicyParameters',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
