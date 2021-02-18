# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_09_01
  module Models
    #
    # Backup of a Volume
    #
    class Backup

      include MsRestAzure

      # @return [String] Resource location
      attr_accessor :location

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [String] backupId. UUID v4 used to identify the Backup
      attr_accessor :backup_id

      # @return [DateTime] name. The creation date of the backup
      attr_accessor :creation_date

      # @return [String] Azure lifecycle management
      attr_accessor :provisioning_state

      # @return [Integer] Size of backup
      attr_accessor :size

      # @return [String] Label for backup
      attr_accessor :label

      # @return [String] Type of backup adhoc or scheduled
      attr_accessor :backup_type


      #
      # Mapper for Backup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'backup',
          type: {
            name: 'Composite',
            class_name: 'Backup',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              backup_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.backupId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$'
                },
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              size: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.size',
                type: {
                  name: 'Number'
                }
              },
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.label',
                type: {
                  name: 'String'
                }
              },
              backup_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.backupType',
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
