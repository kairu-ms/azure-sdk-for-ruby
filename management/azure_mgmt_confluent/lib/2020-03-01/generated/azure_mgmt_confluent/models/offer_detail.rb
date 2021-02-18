# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Confluent::Mgmt::V2020_03_01
  module Models
    #
    # Confluent Offer detail
    #
    class OfferDetail

      include MsRestAzure

      # @return [String] Publisher Id
      attr_accessor :publisher_id

      # @return [String] Offer Id
      attr_accessor :id

      # @return [String] Offer Plan Id
      attr_accessor :plan_id

      # @return [String] Offer Plan Name
      attr_accessor :plan_name

      # @return [String] Offer Plan Term unit
      attr_accessor :term_unit

      # @return [SaaSOfferStatus] SaaS Offer Status. Possible values include:
      # 'Started', 'PendingFulfillmentStart', 'InProgress', 'Subscribed',
      # 'Suspended', 'Reinstated', 'Succeeded', 'Failed', 'Unsubscribed',
      # 'Updating'
      attr_accessor :status


      #
      # Mapper for OfferDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OfferDetail',
          type: {
            name: 'Composite',
            class_name: 'OfferDetail',
            model_properties: {
              publisher_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publisherId',
                constraints: {
                  MaxLength: 50
                },
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                constraints: {
                  MaxLength: 50
                },
                type: {
                  name: 'String'
                }
              },
              plan_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'planId',
                constraints: {
                  MaxLength: 50
                },
                type: {
                  name: 'String'
                }
              },
              plan_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'planName',
                constraints: {
                  MaxLength: 50
                },
                type: {
                  name: 'String'
                }
              },
              term_unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'termUnit',
                constraints: {
                  MaxLength: 25
                },
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
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
