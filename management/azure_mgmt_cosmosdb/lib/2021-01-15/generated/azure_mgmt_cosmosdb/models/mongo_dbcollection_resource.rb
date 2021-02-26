# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2021_01_15
  module Models
    #
    # Cosmos DB MongoDB collection resource object
    #
    class MongoDBCollectionResource

      include MsRestAzure

      # @return [String] Name of the Cosmos DB MongoDB collection
      attr_accessor :id

      # @return [Hash{String => String}] A key-value pair of shard keys to be
      # applied for the request.
      attr_accessor :shard_key

      # @return [Array<MongoIndex>] List of index keys
      attr_accessor :indexes

      # @return [Integer] Analytical TTL.
      attr_accessor :analytical_storage_ttl


      #
      # Mapper for MongoDBCollectionResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MongoDBCollectionResource',
          type: {
            name: 'Composite',
            class_name: 'MongoDBCollectionResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              shard_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'shardKey',
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
              indexes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'indexes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MongoIndexElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MongoIndex'
                      }
                  }
                }
              },
              analytical_storage_ttl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'analyticalStorageTtl',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
