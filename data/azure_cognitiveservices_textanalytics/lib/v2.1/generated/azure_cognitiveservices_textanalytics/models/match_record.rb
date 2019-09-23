# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::TextAnalytics::V2_1
  module Models
    #
    # Model object.
    #
    #
    class MatchRecord

      include MsRestAzure

      # @return [Float] (optional) If a well-known item with Wikipedia link is
      # recognized, a decimal number denoting the confidence level of the
      # Wikipedia info will be returned.
      attr_accessor :wikipedia_score

      # @return [Float] (optional) If an entity type is recognized, a decimal
      # number denoting the confidence level of the entity type will be
      # returned.
      attr_accessor :entity_type_score

      # @return [String] Entity text as appears in the request.
      attr_accessor :text

      # @return [Integer] Start position (in Unicode characters) for the entity
      # match text.
      attr_accessor :offset

      # @return [Integer] Length (in Unicode characters) for the entity match
      # text.
      attr_accessor :length


      #
      # Mapper for MatchRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MatchRecord',
          type: {
            name: 'Composite',
            class_name: 'MatchRecord',
            model_properties: {
              wikipedia_score: {
                client_side_validation: true,
                required: false,
                serialized_name: 'wikipediaScore',
                type: {
                  name: 'Double'
                }
              },
              entity_type_score: {
                client_side_validation: true,
                required: false,
                serialized_name: 'entityTypeScore',
                type: {
                  name: 'Double'
                }
              },
              text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              offset: {
                client_side_validation: true,
                required: false,
                serialized_name: 'offset',
                type: {
                  name: 'Number'
                }
              },
              length: {
                client_side_validation: true,
                required: false,
                serialized_name: 'length',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end