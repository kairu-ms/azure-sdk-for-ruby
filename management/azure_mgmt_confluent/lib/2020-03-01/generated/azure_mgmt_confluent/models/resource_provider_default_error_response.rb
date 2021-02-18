# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Confluent::Mgmt::V2020_03_01
  module Models
    #
    # ResourceProviderDefaultErrorResponse

    # Default error response for resource provider
    #
    class ResourceProviderDefaultErrorResponse

      include MsRestAzure

      # @return [ErrorResponseBody] Response body of Error
      attr_accessor :error


      #
      # Mapper for ResourceProviderDefaultErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceProviderDefaultErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'ResourceProviderDefaultErrorResponse',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorResponseBody'
                }
              }
            }
          }
        }
      end
    end
  end
end
