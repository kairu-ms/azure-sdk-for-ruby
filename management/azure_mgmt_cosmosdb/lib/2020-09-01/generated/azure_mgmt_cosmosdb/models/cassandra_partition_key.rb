# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_09_01
  module Models
    #
    # Cosmos DB Cassandra table partition key
    #
    class CassandraPartitionKey

      include MsRestAzure

      # @return [String] Name of the Cosmos DB Cassandra table partition key
      attr_accessor :name


      #
      # Mapper for CassandraPartitionKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CassandraPartitionKey',
          type: {
            name: 'Composite',
            class_name: 'CassandraPartitionKey',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
