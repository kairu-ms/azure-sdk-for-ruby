# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Portal::Mgmt::V2015_08_01_preview
  module Models
    #
    # A dashboard part.
    #
    class DashboardParts

      include MsRestAzure

      # @return [DashboardPartsPosition] The dashboard's part position.
      attr_accessor :position

      # @return The dashboard part's metadata.
      attr_accessor :metadata


      #
      # Mapper for DashboardParts class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DashboardParts',
          type: {
            name: 'Composite',
            class_name: 'DashboardParts',
            model_properties: {
              position: {
                client_side_validation: true,
                required: true,
                serialized_name: 'position',
                type: {
                  name: 'Composite',
                  class_name: 'DashboardPartsPosition'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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
