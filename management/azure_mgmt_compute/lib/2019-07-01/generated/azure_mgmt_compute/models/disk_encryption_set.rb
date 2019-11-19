# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_07_01
  module Models
    #
    # disk encryption set resource.
    #
    class DiskEncryptionSet < Resource

      include MsRestAzure

      # @return [EncryptionSetIdentity]
      attr_accessor :identity

      # @return [KeyVaultAndKeyReference] The key vault key which is currently
      # used by this disk encryption set.
      attr_accessor :active_key

      # @return [Array<KeyVaultAndKeyReference>] A readonly collection of key
      # vault keys previously used by this disk encryption set while a key
      # rotation is in progress. It will be empty if there is no ongoing key
      # rotation.
      attr_accessor :previous_keys

      # @return [String] The disk encryption set provisioning state.
      attr_accessor :provisioning_state


      #
      # Mapper for DiskEncryptionSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiskEncryptionSet',
          type: {
            name: 'Composite',
            class_name: 'DiskEncryptionSet',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionSetIdentity'
                }
              },
              active_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.activeKey',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultAndKeyReference'
                }
              },
              previous_keys: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.previousKeys',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KeyVaultAndKeyReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KeyVaultAndKeyReference'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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