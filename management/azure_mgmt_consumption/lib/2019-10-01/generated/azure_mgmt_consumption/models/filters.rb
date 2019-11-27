# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  module Models
    #
    # May be used to filter budgets by resource group, resource, or meter.
    #
    class Filters

      include MsRestAzure

      # @return [Array<String>] The list of filters on resource groups, allowed
      # at subscription level only.
      attr_accessor :resource_groups

      # @return [Array<String>] The list of filters on resources.
      attr_accessor :resources

      # @return The list of filters on meters (GUID), mandatory for budgets of
      # usage category.
      attr_accessor :meters

      # @return [Hash{String => Array<String>}] The dictionary of filters on
      # tags.
      attr_accessor :tags


      #
      # Mapper for Filters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Filters',
          type: {
            name: 'Composite',
            class_name: 'Filters',
            model_properties: {
              resource_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceGroups',
                constraints: {
                  MaxItems: 10,
                  MinItems: 0
                },
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
              resources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resources',
                constraints: {
                  MaxItems: 10,
                  MinItems: 0
                },
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
              meters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'meters',
                constraints: {
                  MaxItems: 10,
                  MinItems: 0
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UuidElementType',
                      type: {
                        name: 'String'
                      }
                  }
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
                      serialized_name: 'ArrayElementType',
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
          }
        }
      end
    end
  end
end
