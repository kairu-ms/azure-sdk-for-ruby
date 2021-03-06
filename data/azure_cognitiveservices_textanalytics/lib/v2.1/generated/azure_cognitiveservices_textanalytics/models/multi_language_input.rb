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
    class MultiLanguageInput

      include MsRestAzure

      # @return [String] This is the 2 letter ISO 639-1 representation of a
      # language. For example, use "en" for English; "es" for Spanish etc.,
      attr_accessor :language

      # @return [String] Unique, non-empty document identifier.
      attr_accessor :id

      # @return [String]
      attr_accessor :text


      #
      # Mapper for MultiLanguageInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MultiLanguageInput',
          type: {
            name: 'Composite',
            class_name: 'MultiLanguageInput',
            model_properties: {
              language: {
                client_side_validation: true,
                required: false,
                serialized_name: 'language',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'text',
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
