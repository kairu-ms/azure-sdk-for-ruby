# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  module Models
    #
    # The properties of the meter detail.
    #
    class MeterDetails

      include MsRestAzure

      # @return [String] The name of the meter, within the given meter category
      attr_accessor :meter_name

      # @return [String] The category of the meter, for example, 'Cloud
      # services', 'Networking', etc..
      attr_accessor :meter_category

      # @return [String] The subcategory of the meter, for example, 'A6 Cloud
      # services', 'ExpressRoute (IXP)', etc..
      attr_accessor :meter_sub_category

      # @return [String] The unit in which the meter consumption is charged,
      # for example, 'Hours', 'GB', etc.
      attr_accessor :unit

      # @return [String] The location in which the Azure service is available.
      attr_accessor :meter_location

      # @return The total included quantity associated with the offer.
      attr_accessor :total_included_quantity

      # @return The pretax listing price.
      attr_accessor :pretax_standard_rate

      # @return [String] The name of the service.
      attr_accessor :service_name

      # @return [String] The service tier.
      attr_accessor :service_tier


      #
      # Mapper for MeterDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MeterDetails',
          type: {
            name: 'Composite',
            class_name: 'MeterDetails',
            model_properties: {
              meter_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'meterName',
                type: {
                  name: 'String'
                }
              },
              meter_category: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'meterCategory',
                type: {
                  name: 'String'
                }
              },
              meter_sub_category: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'meterSubCategory',
                type: {
                  name: 'String'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              meter_location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'meterLocation',
                type: {
                  name: 'String'
                }
              },
              total_included_quantity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'totalIncludedQuantity',
                type: {
                  name: 'Number'
                }
              },
              pretax_standard_rate: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'pretaxStandardRate',
                type: {
                  name: 'Number'
                }
              },
              service_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'serviceName',
                type: {
                  name: 'String'
                }
              },
              service_tier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'serviceTier',
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
