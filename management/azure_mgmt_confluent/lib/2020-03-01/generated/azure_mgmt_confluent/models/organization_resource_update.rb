# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Confluent::Mgmt::V2020_03_01
  module Models
    #
    # Organization Resource update
    #
    class OrganizationResourceUpdate

      include MsRestAzure

      # @return [Hash{String => String}] ARM resource tags
      attr_accessor :tags


      #
      # Mapper for OrganizationResourceUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OrganizationResourceUpdate',
          type: {
            name: 'Composite',
            class_name: 'OrganizationResourceUpdate',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
