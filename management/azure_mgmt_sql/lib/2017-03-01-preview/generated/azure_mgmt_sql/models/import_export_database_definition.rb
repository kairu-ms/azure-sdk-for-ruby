# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # Contains the information necessary to perform import/export operation.
    #
    class ImportExportDatabaseDefinition

      include MsRestAzure

      # @return [String] Name of the import database.
      attr_accessor :database_name

      # @return [String] Edition of the import database.
      attr_accessor :edition

      # @return [String] Service level objective name of the import database.
      attr_accessor :service_objective_name

      # @return [String] Max size in bytes for the import database.
      attr_accessor :max_size_bytes

      # @return [String] Storage key type.
      attr_accessor :storage_key_type

      # @return [String] Storage key.
      attr_accessor :storage_key

      # @return [String] Storage Uri.
      attr_accessor :storage_uri

      # @return [String] Administrator login name.
      attr_accessor :administrator_login

      # @return [String] Administrator login password.
      attr_accessor :administrator_login_password

      # @return [String] Authentication type.
      attr_accessor :authentication_type


      #
      # Mapper for ImportExportDatabaseDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImportExportDatabaseDefinition',
          type: {
            name: 'Composite',
            class_name: 'ImportExportDatabaseDefinition',
            model_properties: {
              database_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'databaseName',
                type: {
                  name: 'String'
                }
              },
              edition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'edition',
                type: {
                  name: 'String'
                }
              },
              service_objective_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceObjectiveName',
                type: {
                  name: 'String'
                }
              },
              max_size_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxSizeBytes',
                type: {
                  name: 'String'
                }
              },
              storage_key_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'storageKeyType',
                type: {
                  name: 'String'
                }
              },
              storage_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'storageKey',
                type: {
                  name: 'String'
                }
              },
              storage_uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'storageUri',
                type: {
                  name: 'String'
                }
              },
              administrator_login: {
                client_side_validation: true,
                required: true,
                serialized_name: 'administratorLogin',
                type: {
                  name: 'String'
                }
              },
              administrator_login_password: {
                client_side_validation: true,
                required: true,
                serialized_name: 'administratorLoginPassword',
                type: {
                  name: 'String'
                }
              },
              authentication_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authenticationType',
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