# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class RestorableSqlContainerPropertiesResourceContainer

      include MsRestAzure

      # @return [String] Name of the Cosmos DB SQL container
      attr_accessor :id

      # @return [IndexingPolicy] The configuration of the indexing policy. By
      # default, the indexing is automatic for all document paths within the
      # container
      attr_accessor :indexing_policy

      # @return [ContainerPartitionKey] The configuration of the partition key
      # to be used for partitioning data into multiple partitions
      attr_accessor :partition_key

      # @return [Integer] Default time to live
      attr_accessor :default_ttl

      # @return [UniqueKeyPolicy] The unique key policy configuration for
      # specifying uniqueness constraints on documents in the collection in the
      # Azure Cosmos DB service.
      attr_accessor :unique_key_policy

      # @return [ConflictResolutionPolicy] The conflict resolution policy for
      # the container.
      attr_accessor :conflict_resolution_policy

      # @return [String] A system generated property. A unique identifier.
      attr_accessor :_rid

      # @return A system generated property that denotes the last updated
      # timestamp of the resource.
      attr_accessor :_ts

      # @return [String] A system generated property representing the resource
      # etag required for optimistic concurrency control.
      attr_accessor :_etag

      # @return [String] A system generated property that specifies the
      # addressable path of the container resource.
      attr_accessor :_self


      #
      # Mapper for RestorableSqlContainerPropertiesResourceContainer class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestorableSqlContainerProperties_resource_container',
          type: {
            name: 'Composite',
            class_name: 'RestorableSqlContainerPropertiesResourceContainer',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              indexing_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'indexingPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'IndexingPolicy'
                }
              },
              partition_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionKey',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerPartitionKey'
                }
              },
              default_ttl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultTtl',
                type: {
                  name: 'Number'
                }
              },
              unique_key_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'uniqueKeyPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'UniqueKeyPolicy'
                }
              },
              conflict_resolution_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'conflictResolutionPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ConflictResolutionPolicy'
                }
              },
              _rid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '_rid',
                type: {
                  name: 'String'
                }
              },
              _ts: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '_ts',
                type: {
                  name: 'Object'
                }
              },
              _etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '_etag',
                type: {
                  name: 'String'
                }
              },
              _self: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '_self',
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
