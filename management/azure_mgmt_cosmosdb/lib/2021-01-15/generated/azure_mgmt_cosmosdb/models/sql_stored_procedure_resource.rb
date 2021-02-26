# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2021_01_15
  module Models
    #
    # Cosmos DB SQL storedProcedure resource object
    #
    class SqlStoredProcedureResource

      include MsRestAzure

      # @return [String] Name of the Cosmos DB SQL storedProcedure
      attr_accessor :id

      # @return [String] Body of the Stored Procedure
      attr_accessor :body


      #
      # Mapper for SqlStoredProcedureResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlStoredProcedureResource',
          type: {
            name: 'Composite',
            class_name: 'SqlStoredProcedureResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'body',
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
