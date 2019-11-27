# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_06_17_preview
  module Models
    #
    # The parameters that can be provided when updating workbook properties
    # properties.
    #
    class WorkbookUpdateParameters

      include MsRestAzure

      # @return [SharedTypeKind] The kind of workbook. Choices are user and
      # shared. Possible values include: 'user', 'shared'
      attr_accessor :kind

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [String] The user-defined name (display name) of the workbook.
      attr_accessor :display_name

      # @return [String] Configuration of this particular workbook.
      # Configuration data is a string containing valid JSON
      attr_accessor :serialized_data

      # @return [String] Workbook category, as defined by the user at creation
      # time.
      attr_accessor :category

      # @return [Array<String>] A list of 0 or more tags that are associated
      # with this workbook definition
      attr_accessor :tags1


      #
      # Mapper for WorkbookUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkbookUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'WorkbookUpdateParameters',
            model_properties: {
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              serialized_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serializedData',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.category',
                type: {
                  name: 'String'
                }
              },
              tags1: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tags',
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
