# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2017_07_01
  module Models
    #
    # Lists actions the user can take based on the current availabilityState of
    # the resource.
    #
    class RecommendedAction

      include MsRestAzure

      # @return [String] Recommended action.
      attr_accessor :action

      # @return [String] Link to the action
      attr_accessor :action_url

      # @return [String] Substring of action, it describes which text should
      # host the action url.
      attr_accessor :action_url_text


      #
      # Mapper for RecommendedAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'recommendedAction',
          type: {
            name: 'Composite',
            class_name: 'RecommendedAction',
            model_properties: {
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
                type: {
                  name: 'String'
                }
              },
              action_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionUrl',
                type: {
                  name: 'String'
                }
              },
              action_url_text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionUrlText',
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
