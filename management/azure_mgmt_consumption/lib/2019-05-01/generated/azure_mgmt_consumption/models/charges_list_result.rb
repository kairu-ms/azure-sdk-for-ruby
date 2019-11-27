# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_05_01
  module Models
    #
    # Result of listing charge summary.
    #
    class ChargesListResult

      include MsRestAzure

      # @return [Array<ChargeSummary>] The list of charge summary
      attr_accessor :value


      #
      # Mapper for ChargesListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChargesListResult',
          type: {
            name: 'Composite',
            class_name: 'ChargesListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ChargeSummaryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ChargeSummary'
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
