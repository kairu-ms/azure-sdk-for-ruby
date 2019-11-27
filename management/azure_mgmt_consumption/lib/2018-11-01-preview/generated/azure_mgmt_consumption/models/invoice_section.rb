# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_11_01_preview
  module Models
    #
    # An InvoiceSection resource.
    #
    class InvoiceSection < Resource

      include MsRestAzure

      # @return [String] The name of the InvoiceSection.
      attr_accessor :display_name

      # @return [Array<BillingProfile>] The billing profiles associated to the
      # billing account.
      attr_accessor :billing_profiles


      #
      # Mapper for InvoiceSection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InvoiceSection',
          type: {
            name: 'Composite',
            class_name: 'InvoiceSection',
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
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              billing_profiles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.billingProfiles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BillingProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BillingProfile'
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
