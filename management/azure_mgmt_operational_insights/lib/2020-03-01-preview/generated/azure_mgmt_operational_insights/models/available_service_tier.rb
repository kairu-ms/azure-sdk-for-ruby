# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_03_01_preview
  module Models
    #
    # Service Tier details.
    #
    class AvailableServiceTier

      include MsRestAzure

      # @return [SkuNameEnum] The name of the Service Tier. Possible values
      # include: 'Free', 'Standard', 'Premium', 'PerNode', 'PerGB2018',
      # 'Standalone', 'CapacityReservation'
      attr_accessor :service_tier

      # @return [Boolean] True if the Service Tier is enabled for the
      # workspace.
      attr_accessor :enabled

      # @return [Integer] The minimum retention for the Service Tier, in days.
      attr_accessor :minimum_retention

      # @return [Integer] The maximum retention for the Service Tier, in days.
      attr_accessor :maximum_retention

      # @return [Integer] The default retention for the Service Tier, in days.
      attr_accessor :default_retention

      # @return [Integer] The capacity reservation level in GB per day.
      # Returned for the Capacity Reservation Service Tier.
      attr_accessor :capacity_reservation_level

      # @return [String] Time when the sku was last updated for the workspace.
      # Returned for the Capacity Reservation Service Tier.
      attr_accessor :last_sku_update


      #
      # Mapper for AvailableServiceTier class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableServiceTier',
          type: {
            name: 'Composite',
            class_name: 'AvailableServiceTier',
            model_properties: {
              service_tier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'serviceTier',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              minimum_retention: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'minimumRetention',
                type: {
                  name: 'Number'
                }
              },
              maximum_retention: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maximumRetention',
                type: {
                  name: 'Number'
                }
              },
              default_retention: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'defaultRetention',
                type: {
                  name: 'Number'
                }
              },
              capacity_reservation_level: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'capacityReservationLevel',
                type: {
                  name: 'Number'
                }
              },
              last_sku_update: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastSkuUpdate',
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
