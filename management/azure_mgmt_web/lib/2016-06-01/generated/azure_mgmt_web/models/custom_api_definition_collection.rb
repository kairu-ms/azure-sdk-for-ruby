# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_06_01
  module Models
    #
    # A list of custom API definitions
    #
    class CustomApiDefinitionCollection

      include MsRestAzure

      # @return [Array<CustomApiDefinition>] Collection of custom APIs
      attr_accessor :value


      #
      # Mapper for CustomApiDefinitionCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomApiDefinitionCollection',
          type: {
            name: 'Composite',
            class_name: 'CustomApiDefinitionCollection',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CustomApiDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CustomApiDefinition'
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
