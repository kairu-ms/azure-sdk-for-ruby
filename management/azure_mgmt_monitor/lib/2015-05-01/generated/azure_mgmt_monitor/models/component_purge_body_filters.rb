# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2015_05_01
  module Models
    #
    # User-defined filters to return data which will be purged from the table.
    #
    class ComponentPurgeBodyFilters

      include MsRestAzure

      # @return [String] The column of the table over which the given query
      # should run
      attr_accessor :column

      # @return [String] A query operator to evaluate over the provided column
      # and value(s). Supported operators are ==, =~, in, in~, >, >=, <, <=,
      # between, and have the same behavior as they would in a KQL query.
      attr_accessor :operator

      # @return the value for the operator to function over. This can be a
      # number (e.g., > 100), a string (timestamp >= '2017-09-01') or array of
      # values.
      attr_accessor :value

      # @return [String] When filtering over custom dimensions, this key will
      # be used as the name of the custom dimension.
      attr_accessor :key


      #
      # Mapper for ComponentPurgeBodyFilters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ComponentPurgeBodyFilters',
          type: {
            name: 'Composite',
            class_name: 'ComponentPurgeBodyFilters',
            model_properties: {
              column: {
                client_side_validation: true,
                required: false,
                serialized_name: 'column',
                type: {
                  name: 'String'
                }
              },
              operator: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operator',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Object'
                }
              },
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
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
