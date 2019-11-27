# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_08_01
  module Models
    #
    # The configuration for container-enabled pools.
    #
    #
    class ContainerConfiguration

      include MsRestAzure

      # @return [String] The container technology to be used. . Default value:
      # 'DockerCompatible' .
      attr_accessor :type

      # @return [Array<String>] The collection of container image names. This
      # is the full image reference, as would be specified to "docker pull". An
      # image will be sourced from the default Docker registry unless the image
      # is fully qualified with an alternative registry.
      attr_accessor :container_image_names

      # @return [Array<ContainerRegistry>] Additional private registries from
      # which containers can be pulled. If any images must be downloaded from a
      # private registry which requires credentials, then those credentials
      # must be provided here.
      attr_accessor :container_registries


      #
      # Mapper for ContainerConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ContainerConfiguration',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'DockerCompatible',
                type: {
                  name: 'String'
                }
              },
              container_image_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerImageNames',
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
              },
              container_registries: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerRegistries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContainerRegistryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContainerRegistry'
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
