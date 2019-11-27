# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  module Models
    #
    # A credit summary resource.
    #
    class CreditSummary < Resource

      include MsRestAzure

      # @return [CreditBalanceSummary] Summary of balances associated with this
      # credit summary.
      attr_accessor :balance_summary

      # @return [Amount] Pending credit adjustments.
      attr_accessor :pending_credit_adjustments

      # @return [Amount] Expired credit.
      attr_accessor :expired_credit

      # @return [Amount] Pending eligible charges.
      attr_accessor :pending_eligible_charges


      #
      # Mapper for CreditSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreditSummary',
          type: {
            name: 'Composite',
            class_name: 'CreditSummary',
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
              balance_summary: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.balanceSummary',
                type: {
                  name: 'Composite',
                  class_name: 'CreditBalanceSummary'
                }
              },
              pending_credit_adjustments: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.pendingCreditAdjustments',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              expired_credit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.expiredCredit',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              },
              pending_eligible_charges: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.pendingEligibleCharges',
                type: {
                  name: 'Composite',
                  class_name: 'Amount'
                }
              }
            }
          }
        }
      end
    end
  end
end
