# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_05_01_preview
  module Models
    #
    # reservation summary resource.
    #
    class ReservationSummary < Resource

      include MsRestAzure

      # @return [String] The reservation order ID is the identifier for a
      # reservation purchase. Each reservation order ID represents a single
      # purchase transaction. A reservation order contains reservations. The
      # reservation order specifies the VM size and region for the
      # reservations.
      attr_accessor :reservation_order_id

      # @return [String] The reservation ID is the identifier of a reservation
      # within a reservation order. Each reservation is the grouping for
      # applying the benefit scope and also specifies the number of instances
      # to which the reservation benefit can be applied to.
      attr_accessor :reservation_id

      # @return [String] This is the ARM Sku name. It can be used to join with
      # the serviceType field in additional info in usage records.
      attr_accessor :sku_name

      # @return This is the total hours reserved. E.g. if reservation for 1
      # instance was made on 1 PM, this will be 11 hours for that day and 24
      # hours from subsequent days
      attr_accessor :reserved_hours

      # @return [DateTime] Data corresponding to the utilization record. If the
      # grain of data is monthly, it will be first day of month.
      attr_accessor :usage_date

      # @return Total used hours by the reservation
      attr_accessor :used_hours

      # @return This is the minimum hourly utilization in the usage time (day
      # or month). E.g. if usage record corresponds to 12/10/2017 and on that
      # for hour 4 and 5, utilization was 10%, this field will return 10% for
      # that day
      attr_accessor :min_utilization_percentage

      # @return This is average utilization for the entire time range. (day or
      # month depending on the grain)
      attr_accessor :avg_utilization_percentage

      # @return This is the maximum hourly utilization in the usage time (day
      # or month). E.g. if usage record corresponds to 12/10/2017 and on that
      # for hour 4 and 5, utilization was 100%, this field will return 100% for
      # that day.
      attr_accessor :max_utilization_percentage


      #
      # Mapper for ReservationSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReservationSummary',
          type: {
            name: 'Composite',
            class_name: 'ReservationSummary',
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
              reservation_order_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reservationOrderId',
                type: {
                  name: 'String'
                }
              },
              reservation_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reservationId',
                type: {
                  name: 'String'
                }
              },
              sku_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.skuName',
                type: {
                  name: 'String'
                }
              },
              reserved_hours: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reservedHours',
                type: {
                  name: 'Number'
                }
              },
              usage_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.usageDate',
                type: {
                  name: 'DateTime'
                }
              },
              used_hours: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.usedHours',
                type: {
                  name: 'Number'
                }
              },
              min_utilization_percentage: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.minUtilizationPercentage',
                type: {
                  name: 'Number'
                }
              },
              avg_utilization_percentage: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.avgUtilizationPercentage',
                type: {
                  name: 'Number'
                }
              },
              max_utilization_percentage: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.maxUtilizationPercentage',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
