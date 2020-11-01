# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Information of a specific aggregation in the expansion result.
    #
    class ExpansionResultAggregation

      include MsRestAzure

      # @return [String] The common type of the aggregation. (for e.g. entity
      # field name)
      attr_accessor :aggregation_type

      # @return [Integer] Total number of aggregations of the given kind (and
      # aggregationType if given) in the expansion result.
      attr_accessor :count

      # @return [String] The display name of the aggregation by type.
      attr_accessor :display_name

      # @return [EntityKind] The kind of the aggregated entity. Possible values
      # include: 'Account', 'Host', 'File', 'AzureResource',
      # 'CloudApplication', 'DnsResolution', 'FileHash', 'Ip', 'Malware',
      # 'Process', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'Url',
      # 'IoTDevice', 'SecurityAlert', 'Bookmark'
      attr_accessor :entity_kind


      #
      # Mapper for ExpansionResultAggregation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpansionResultAggregation',
          type: {
            name: 'Composite',
            class_name: 'ExpansionResultAggregation',
            model_properties: {
              aggregation_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aggregationType',
                type: {
                  name: 'String'
                }
              },
              count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'count',
                type: {
                  name: 'Number'
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
              entity_kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'entityKind',
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
