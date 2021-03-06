# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Support::Mgmt::V2020_04_01
  module Models
    #
    # Object that represents a Service resource.
    #
    class Service

      include MsRestAzure

      # @return [String] Id of the resource.
      attr_accessor :id

      # @return [String] Name of the resource.
      attr_accessor :name

      # @return [String] Type of the resource 'Microsoft.Support/services'.
      attr_accessor :type

      # @return [String] Localized name of the Azure service.
      attr_accessor :display_name

      # @return [Array<String>] ARM Resource types.
      attr_accessor :resource_types


      #
      # Mapper for Service class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Service',
          type: {
            name: 'Composite',
            class_name: 'Service',
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
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              resource_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
