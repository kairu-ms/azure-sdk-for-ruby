# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # An Azure Cosmos DB MongoDB collection.
    #
    class MongoDBCollectionGetResults < ARMResourceProperties

      include MsRestAzure

      # @return [MongoDBCollectionGetPropertiesResource]
      attr_accessor :resource

      # @return [MongoDBCollectionGetPropertiesOptions]
      attr_accessor :options


      #
      # Mapper for MongoDBCollectionGetResults class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MongoDBCollectionGetResults',
          type: {
            name: 'Composite',
            class_name: 'MongoDBCollectionGetResults',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedServiceIdentity'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resource',
                type: {
                  name: 'Composite',
                  class_name: 'MongoDBCollectionGetPropertiesResource'
                }
              },
              options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.options',
                type: {
                  name: 'Composite',
                  class_name: 'MongoDBCollectionGetPropertiesOptions'
                }
              }
            }
          }
        }
      end
    end
  end
end
