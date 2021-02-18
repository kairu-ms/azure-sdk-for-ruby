# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_09_01
  module Models
    #
    # Configuration values for periodic mode backup
    #
    class PeriodicModeProperties

      include MsRestAzure

      # @return [Integer] An integer representing the interval in minutes
      # between two backups
      attr_accessor :backup_interval_in_minutes

      # @return [Integer] An integer representing the time (in hours) that each
      # backup is retained
      attr_accessor :backup_retention_interval_in_hours


      #
      # Mapper for PeriodicModeProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PeriodicModeProperties',
          type: {
            name: 'Composite',
            class_name: 'PeriodicModeProperties',
            model_properties: {
              backup_interval_in_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupIntervalInMinutes',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              backup_retention_interval_in_hours: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupRetentionIntervalInHours',
                constraints: {
                  InclusiveMinimum: 0
                },
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
