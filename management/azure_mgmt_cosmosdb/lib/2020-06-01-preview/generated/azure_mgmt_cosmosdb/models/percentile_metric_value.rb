# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # Represents percentile metrics values.
    #
    class PercentileMetricValue < MetricValue

      include MsRestAzure

      # @return [Float] The 10th percentile value for the metric.
      attr_accessor :p10

      # @return [Float] The 25th percentile value for the metric.
      attr_accessor :p25

      # @return [Float] The 50th percentile value for the metric.
      attr_accessor :p50

      # @return [Float] The 75th percentile value for the metric.
      attr_accessor :p75

      # @return [Float] The 90th percentile value for the metric.
      attr_accessor :p90

      # @return [Float] The 95th percentile value for the metric.
      attr_accessor :p95

      # @return [Float] The 99th percentile value for the metric.
      attr_accessor :p99


      #
      # Mapper for PercentileMetricValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PercentileMetricValue',
          type: {
            name: 'Composite',
            class_name: 'PercentileMetricValue',
            model_properties: {
              _count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '_count',
                type: {
                  name: 'Double'
                }
              },
              average: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'average',
                type: {
                  name: 'Double'
                }
              },
              maximum: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maximum',
                type: {
                  name: 'Double'
                }
              },
              minimum: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'minimum',
                type: {
                  name: 'Double'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              total: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'total',
                type: {
                  name: 'Double'
                }
              },
              p10: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'P10',
                type: {
                  name: 'Double'
                }
              },
              p25: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'P25',
                type: {
                  name: 'Double'
                }
              },
              p50: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'P50',
                type: {
                  name: 'Double'
                }
              },
              p75: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'P75',
                type: {
                  name: 'Double'
                }
              },
              p90: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'P90',
                type: {
                  name: 'Double'
                }
              },
              p95: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'P95',
                type: {
                  name: 'Double'
                }
              },
              p99: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'P99',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
