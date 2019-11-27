# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_06_01
  module Models
    #
    # An marketplace resource.
    #
    class Marketplace < Resource

      include MsRestAzure

      # @return [String] The id of the billing period resource that the usage
      # belongs to.
      attr_accessor :billing_period_id

      # @return [DateTime] The start of the date time range covered by the
      # usage detail.
      attr_accessor :usage_start

      # @return [DateTime] The end of the date time range covered by the usage
      # detail.
      attr_accessor :usage_end

      # @return The marketplace resource rate.
      attr_accessor :resource_rate

      # @return [String] The type of offer.
      attr_accessor :offer_name

      # @return [String] The name of resource group.
      attr_accessor :resource_group

      # @return [String] The order number.
      attr_accessor :order_number

      # @return [String] The name of the resource instance that the usage is
      # about.
      attr_accessor :instance_name

      # @return [String] The uri of the resource instance that the usage is
      # about.
      attr_accessor :instance_id

      # @return [String] The ISO currency in which the meter is charged, for
      # example, USD.
      attr_accessor :currency

      # @return The quantity of usage.
      attr_accessor :consumed_quantity

      # @return [String] The unit of measure.
      attr_accessor :unit_of_measure

      # @return The amount of cost before tax.
      attr_accessor :pretax_cost

      # @return [Boolean] The estimated usage is subject to change.
      attr_accessor :is_estimated

      # @return The meter id (GUID).
      attr_accessor :meter_id

      # @return Subscription guid.
      attr_accessor :subscription_guid

      # @return [String] Subscription name.
      attr_accessor :subscription_name

      # @return [String] Account name.
      attr_accessor :account_name

      # @return [String] Department name.
      attr_accessor :department_name

      # @return [String] Consumed service name.
      attr_accessor :consumed_service

      # @return [String] The cost center of this department if it is a
      # department and a costcenter exists
      attr_accessor :cost_center

      # @return [String] Additional details of this usage item. By default this
      # is not populated, unless it's specified in $expand.
      attr_accessor :additional_properties

      # @return [String] The name of publisher.
      attr_accessor :publisher_name

      # @return [String] The name of plan.
      attr_accessor :plan_name

      # @return [Boolean] Flag indicating whether this is a recurring charge or
      # not.
      attr_accessor :is_recurring_charge


      #
      # Mapper for Marketplace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Marketplace',
          type: {
            name: 'Composite',
            class_name: 'Marketplace',
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
              billing_period_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodId',
                type: {
                  name: 'String'
                }
              },
              usage_start: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.usageStart',
                type: {
                  name: 'DateTime'
                }
              },
              usage_end: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.usageEnd',
                type: {
                  name: 'DateTime'
                }
              },
              resource_rate: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceRate',
                type: {
                  name: 'Number'
                }
              },
              offer_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.offerName',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGroup',
                type: {
                  name: 'String'
                }
              },
              order_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.orderNumber',
                type: {
                  name: 'String'
                }
              },
              instance_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceName',
                type: {
                  name: 'String'
                }
              },
              instance_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceId',
                type: {
                  name: 'String'
                }
              },
              currency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.currency',
                type: {
                  name: 'String'
                }
              },
              consumed_quantity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.consumedQuantity',
                type: {
                  name: 'Number'
                }
              },
              unit_of_measure: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.unitOfMeasure',
                type: {
                  name: 'String'
                }
              },
              pretax_cost: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.pretaxCost',
                type: {
                  name: 'Number'
                }
              },
              is_estimated: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isEstimated',
                type: {
                  name: 'Boolean'
                }
              },
              meter_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.meterId',
                type: {
                  name: 'String'
                }
              },
              subscription_guid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subscriptionGuid',
                type: {
                  name: 'String'
                }
              },
              subscription_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subscriptionName',
                type: {
                  name: 'String'
                }
              },
              account_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.accountName',
                type: {
                  name: 'String'
                }
              },
              department_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.departmentName',
                type: {
                  name: 'String'
                }
              },
              consumed_service: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.consumedService',
                type: {
                  name: 'String'
                }
              },
              cost_center: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.costCenter',
                type: {
                  name: 'String'
                }
              },
              additional_properties: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.additionalProperties',
                type: {
                  name: 'String'
                }
              },
              publisher_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.publisherName',
                type: {
                  name: 'String'
                }
              },
              plan_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.planName',
                type: {
                  name: 'String'
                }
              },
              is_recurring_charge: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isRecurringCharge',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
