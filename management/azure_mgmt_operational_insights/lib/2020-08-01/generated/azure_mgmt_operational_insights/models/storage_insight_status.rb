# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_08_01
  module Models
    #
    # The status of the storage insight.
    #
    class StorageInsightStatus

      include MsRestAzure

      # @return [StorageInsightState] The state of the storage insight
      # connection to the workspace. Possible values include: 'OK', 'ERROR'
      attr_accessor :state

      # @return [String] Description of the state of the storage insight.
      attr_accessor :description


      #
      # Mapper for StorageInsightStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageInsightStatus',
          type: {
            name: 'Composite',
            class_name: 'StorageInsightStatus',
            model_properties: {
              state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
