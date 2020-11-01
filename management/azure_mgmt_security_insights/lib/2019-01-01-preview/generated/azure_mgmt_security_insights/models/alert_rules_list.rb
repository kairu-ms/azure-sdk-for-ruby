# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # List all the alert rules.
    #
    class AlertRulesList

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] URL to fetch the next set of alert rules.
      attr_accessor :next_link

      # @return [Array<AlertRule>] Array of alert rules.
      attr_accessor :value

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<AlertRule>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil && !page.next_link.strip.empty? do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [AlertRulesList] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for AlertRulesList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AlertRulesList',
          type: {
            name: 'Composite',
            class_name: 'AlertRulesList',
            model_properties: {
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AlertRuleElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'kind',
                        uber_parent: 'AlertRule',
                        class_name: 'AlertRule'
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
