# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_08_01_preview
  module Models
    #
    # Model object.
    #
    #
    class Resource

      include MsRestAzure

      # @return [String] Fully qualified resource Id for the resource. Ex -
      # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
      attr_accessor :id

      # @return [String] The name of the resource
      attr_accessor :name

      # @return [String] The type of the resource. Ex-
      # Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
      attr_accessor :type


      # @return [String] the name of the resource group of the resource.
      def resource_group
        unless self.id.nil?
          groups = self.id.match(/.+\/resourceGroups\/([^\/]+)\/.+/)
          groups.captures[0].strip if groups
        end
      end


      #
      # Mapper for Resource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Resource',
          type: {
            name: 'Composite',
            class_name: 'Resource',
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
              }
            }
          }
        }
      end
    end
  end
end
