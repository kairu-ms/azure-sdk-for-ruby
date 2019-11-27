# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_04_01_preview
  module Models
    #
    # The start and end date for a budget.
    #
    class BudgetTimePeriod

      include MsRestAzure

      # @return [DateTime] The start date for the budget.
      attr_accessor :start_date

      # @return [DateTime] The end date for the budget. If not provided, we
      # default this to 10 years from the start date.
      attr_accessor :end_date


      #
      # Mapper for BudgetTimePeriod class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BudgetTimePeriod',
          type: {
            name: 'Composite',
            class_name: 'BudgetTimePeriod',
            model_properties: {
              start_date: {
                client_side_validation: true,
                required: true,
                serialized_name: 'startDate',
                type: {
                  name: 'DateTime'
                }
              },
              end_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
