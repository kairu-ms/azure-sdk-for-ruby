# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_10_01
  module Models
    #
    # Details about operation related to metrics.
    #
    class MetricSpecification

      include MsRestAzure

      # @return [String] The name of the metric.
      attr_accessor :name

      # @return [String] Localized display name of the metric.
      attr_accessor :display_name

      # @return [String] The description of the metric.
      attr_accessor :display_description

      # @return [String] The unit that the metric is measured in.
      attr_accessor :unit

      # @return [String] The type of metric aggregation.
      attr_accessor :aggregation_type

      # @return [Array<MetricAggregationType>] Support metric aggregation type.
      attr_accessor :supported_aggregation_types

      # @return [String] Type of metrics.
      attr_accessor :metric_class

      # @return [Array<MetricDimension>] Dimensions of the metric
      attr_accessor :dimensions


      #
      # Mapper for MetricSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricSpecification',
          type: {
            name: 'Composite',
            class_name: 'MetricSpecification',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              display_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayDescription',
                type: {
                  name: 'String'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              aggregation_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aggregationType',
                type: {
                  name: 'String'
                }
              },
              supported_aggregation_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'supportedAggregationTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricAggregationTypeElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              metric_class: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metricClass',
                type: {
                  name: 'String'
                }
              },
              dimensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricDimensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricDimension'
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
