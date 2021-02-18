# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # Properties of the regional restorable account.
    #
    class RestorableLocationResource

      include MsRestAzure

      # @return [String] The location of the regional restorable account.
      attr_accessor :location_name

      # @return [String] The instance id of the regional restorable account.
      attr_accessor :regional_database_account_instance_id

      # @return [DateTime] The creation time of the regional restorable
      # database account (ISO-8601 format).
      attr_accessor :creation_time

      # @return [DateTime] The time at which the regional restorable database
      # account has been deleted (ISO-8601 format).
      attr_accessor :deletion_time


      #
      # Mapper for RestorableLocationResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestorableLocationResource',
          type: {
            name: 'Composite',
            class_name: 'RestorableLocationResource',
            model_properties: {
              location_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'locationName',
                type: {
                  name: 'String'
                }
              },
              regional_database_account_instance_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'regionalDatabaseAccountInstanceId',
                type: {
                  name: 'String'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              deletion_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'deletionTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
