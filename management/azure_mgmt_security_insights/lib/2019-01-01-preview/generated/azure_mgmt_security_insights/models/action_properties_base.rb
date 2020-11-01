# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Action property bag base.
    #
    class ActionPropertiesBase

      include MsRestAzure

      # @return [String] Logic App Resource Id,
      # /subscriptions/{my-subscription}/resourceGroups/{my-resource-group}/providers/Microsoft.Logic/workflows/{my-workflow-id}.
      attr_accessor :logic_app_resource_id


      #
      # Mapper for ActionPropertiesBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ActionPropertiesBase',
          type: {
            name: 'Composite',
            class_name: 'ActionPropertiesBase',
            model_properties: {
              logic_app_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'logicAppResourceId',
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
