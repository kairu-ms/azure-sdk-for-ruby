# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2015_05_01
  module Models
    #
    # Annotation associated with an application insights resource.
    #
    class Annotation

      include MsRestAzure

      # @return [String] Name of annotation
      attr_accessor :annotation_name

      # @return [String] Category of annotation, free form
      attr_accessor :category

      # @return [DateTime] Time when event occurred
      attr_accessor :event_time

      # @return [String] Unique Id for annotation
      attr_accessor :id

      # @return [String] Serialized JSON object for detailed properties
      attr_accessor :properties

      # @return [String] Related parent annotation if any. Default value:
      # 'null' .
      attr_accessor :related_annotation


      #
      # Mapper for Annotation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Annotation',
          type: {
            name: 'Composite',
            class_name: 'Annotation',
            model_properties: {
              annotation_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AnnotationName',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Category',
                type: {
                  name: 'String'
                }
              },
              event_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EventTime',
                type: {
                  name: 'DateTime'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Id',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Properties',
                type: {
                  name: 'String'
                }
              },
              related_annotation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RelatedAnnotation',
                default_value: 'null',
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
