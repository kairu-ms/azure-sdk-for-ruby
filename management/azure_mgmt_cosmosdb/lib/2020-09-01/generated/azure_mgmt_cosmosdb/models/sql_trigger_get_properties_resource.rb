# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_09_01
  module Models
    #
    # Model object.
    #
    #
    class SqlTriggerGetPropertiesResource

      include MsRestAzure

      # @return [String] Name of the Cosmos DB SQL trigger
      attr_accessor :id

      # @return [String] Body of the Trigger
      attr_accessor :body

      # @return [TriggerType] Type of the Trigger. Possible values include:
      # 'Pre', 'Post'
      attr_accessor :trigger_type

      # @return [TriggerOperation] The operation the trigger is associated
      # with. Possible values include: 'All', 'Create', 'Update', 'Delete',
      # 'Replace'
      attr_accessor :trigger_operation

      # @return [String] A system generated property. A unique identifier.
      attr_accessor :_rid

      # @return [Float] A system generated property that denotes the last
      # updated timestamp of the resource.
      attr_accessor :_ts

      # @return [String] A system generated property representing the resource
      # etag required for optimistic concurrency control.
      attr_accessor :_etag


      #
      # Mapper for SqlTriggerGetPropertiesResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlTriggerGetProperties_resource',
          type: {
            name: 'Composite',
            class_name: 'SqlTriggerGetPropertiesResource',
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
              },
              trigger_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'triggerType',
                type: {
                  name: 'String'
                }
              },
              trigger_operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'triggerOperation',
                type: {
                  name: 'String'
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
                  name: 'Double'
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
              }
            }
          }
        }
      end
    end
  end
end
