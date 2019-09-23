# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AzureStack::Mgmt::V2017_06_01
  module Models
    #
    # Contains the localized display information for this particular operation
    # or action.
    #
    class Display

      include MsRestAzure

      # @return [String] The localized, friendly version of the resource
      # provider name.
      attr_accessor :provider

      # @return [String] The localized, friendly version of the resource type
      # related to this action or operation; the resource type should match the
      # public documentation for the resource provider.
      attr_accessor :resource

      # @return [String] The localized, friendly name for the operation. Use
      # the name as it will displayed to the user.
      attr_accessor :operation

      # @return [String] The localized, friendly description for the operation.
      # The description will be displayed to the user. It should be thorough
      # and concise for used in both tooltips and detailed views.
      attr_accessor :description


      #
      # Mapper for Display class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Display',
          type: {
            name: 'Composite',
            class_name: 'Display',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
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