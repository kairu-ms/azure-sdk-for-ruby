# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::FormRecognizer::V1_0_preview
  module Models
    #
    # Canonical representation of single extracted text.
    #
    class ExtractedToken

      include MsRestAzure

      # @return [String] String value of the extracted text.
      attr_accessor :text

      # @return [Array<Float>] Bounding box of the extracted text. Represents
      # the
      # location of the extracted text as a pair of
      # cartesian co-ordinates. The co-ordinate pairs are arranged by
      # top-left, top-right, bottom-right and bottom-left endpoints box
      # with origin reference from the bottom-left of the page.
      attr_accessor :bounding_box

      # @return [Float] A measure of accuracy of the extracted text.
      attr_accessor :confidence


      #
      # Mapper for ExtractedToken class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExtractedToken',
          type: {
            name: 'Composite',
            class_name: 'ExtractedToken',
            model_properties: {
              text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              bounding_box: {
                client_side_validation: true,
                required: false,
                serialized_name: 'boundingBox',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
                      }
                  }
                }
              },
              confidence: {
                client_side_validation: true,
                required: false,
                serialized_name: 'confidence',
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
