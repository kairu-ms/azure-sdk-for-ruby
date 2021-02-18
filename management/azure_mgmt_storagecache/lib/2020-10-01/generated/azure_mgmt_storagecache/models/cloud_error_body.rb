# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_10_01
  module Models
    #
    # An error response.
    #
    class CloudErrorBody

      include MsRestAzure

      # @return [String] An identifier for the error. Codes are invariant and
      # are intended to be consumed programmatically.
      attr_accessor :code

      # @return [Array<CloudErrorBody>] A list of additional details about the
      # error.
      attr_accessor :details

      # @return [String] A message describing the error, intended to be
      # suitable for display in a user interface.
      attr_accessor :message

      # @return [String] The target of the particular error. For example, the
      # name of the property in error.
      attr_accessor :target


      #
      # Mapper for CloudErrorBody class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CloudErrorBody',
          type: {
            name: 'Composite',
            class_name: 'CloudErrorBody',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CloudErrorBodyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CloudErrorBody'
                      }
                  }
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
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
