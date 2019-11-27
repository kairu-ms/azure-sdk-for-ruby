# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_07_01
  module Models
    #
    # The list of metadata entities
    #
    class MetadataEntityListResult

      include MsRestAzure

      # @return [Array<MetadataEntity>] The list of metadata entities.
      attr_accessor :value

      # @return [String] The link used to get the next page of metadata.
      attr_accessor :next_link


      #
      # Mapper for MetadataEntityListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetadataEntityListResult',
          type: {
            name: 'Composite',
            class_name: 'MetadataEntityListResult',
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
                      serialized_name: 'MetadataEntityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetadataEntity'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
