# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2018_11_01_preview
  module Models
    #
    # A SQL DB Table dataset mapping.
    #
    class SqlDBTableDataSetMapping < DataSetMapping

      include MsRestAzure


      def initialize
        @kind = "SqlDBTable"
      end

      attr_accessor :kind

      # @return [String] DatabaseName name of the sink data set
      attr_accessor :database_name

      # @return [String] Gets the id of source dataset.
      attr_accessor :data_set_id

      # @return [DataSetMappingStatus] Gets the status of the dataset mapping.
      # Possible values include: 'Ok', 'Broken'
      attr_accessor :data_set_mapping_status

      # @return [String] Resource id of SQL server
      attr_accessor :sql_server_resource_id

      # @return [String] SQL DB table name.
      attr_accessor :table_name


      #
      # Mapper for SqlDBTableDataSetMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlDBTable',
          type: {
            name: 'Composite',
            class_name: 'SqlDBTableDataSetMapping',
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
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.databaseName',
                type: {
                  name: 'String'
                }
              },
              data_set_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataSetId',
                type: {
                  name: 'String'
                }
              },
              data_set_mapping_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataSetMappingStatus',
                type: {
                  name: 'String'
                }
              },
              sql_server_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.sqlServerResourceId',
                type: {
                  name: 'String'
                }
              },
              table_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.tableName',
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