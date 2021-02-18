# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30_preview
  module Models
    #
    # Specifies information about the gallery image definition that you want to
    # create or update.
    #
    class GalleryImage < Resource

      include MsRestAzure

      # @return [String] The description of this gallery image definition
      # resource. This property is updatable.
      attr_accessor :description

      # @return [String] The Eula agreement for the gallery image definition.
      attr_accessor :eula

      # @return [String] The privacy statement uri.
      attr_accessor :privacy_statement_uri

      # @return [String] The release note uri.
      attr_accessor :release_note_uri

      # @return [OperatingSystemTypes] This property allows you to specify the
      # type of the OS that is included in the disk when creating a VM from a
      # managed image. <br><br> Possible values are: <br><br> **Windows**
      # <br><br> **Linux**. Possible values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [OperatingSystemStateTypes] This property allows the user to
      # specify whether the virtual machines created under this image are
      # 'Generalized' or 'Specialized'. Possible values include: 'Generalized',
      # 'Specialized'
      attr_accessor :os_state

      # @return [HyperVGeneration] The hypervisor generation of the Virtual
      # Machine. Applicable to OS disks only. Possible values include: 'V1',
      # 'V2'
      attr_accessor :hyper_vgeneration

      # @return [Array<GalleryImageFeature>] A list of gallery image features.
      attr_accessor :features

      # @return [DateTime] The end of life date of the gallery image
      # definition. This property can be used for decommissioning purposes.
      # This property is updatable.
      attr_accessor :end_of_life_date

      # @return [GalleryImageIdentifier]
      attr_accessor :identifier

      # @return [RecommendedMachineConfiguration]
      attr_accessor :recommended

      # @return [Disallowed]
      attr_accessor :disallowed

      # @return [ImagePurchasePlan]
      attr_accessor :purchase_plan

      # @return [Enum] The current state of the gallery image definition. The
      # provisioning state, which only appears in the response. Possible values
      # include: 'Creating', 'Updating', 'Failed', 'Succeeded', 'Deleting',
      # 'Migrating'
      attr_accessor :provisioning_state


      #
      # Mapper for GalleryImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryImage',
          type: {
            name: 'Composite',
            class_name: 'GalleryImage',
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
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              eula: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.eula',
                type: {
                  name: 'String'
                }
              },
              privacy_statement_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privacyStatementUri',
                type: {
                  name: 'String'
                }
              },
              release_note_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.releaseNoteUri',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              os_state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.osState',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemStateTypes'
                }
              },
              hyper_vgeneration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hyperVGeneration',
                type: {
                  name: 'String'
                }
              },
              features: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.features',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GalleryImageFeatureElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GalleryImageFeature'
                      }
                  }
                }
              },
              end_of_life_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endOfLifeDate',
                type: {
                  name: 'DateTime'
                }
              },
              identifier: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.identifier',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryImageIdentifier'
                }
              },
              recommended: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recommended',
                type: {
                  name: 'Composite',
                  class_name: 'RecommendedMachineConfiguration'
                }
              },
              disallowed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disallowed',
                type: {
                  name: 'Composite',
                  class_name: 'Disallowed'
                }
              },
              purchase_plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.purchasePlan',
                type: {
                  name: 'Composite',
                  class_name: 'ImagePurchasePlan'
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
