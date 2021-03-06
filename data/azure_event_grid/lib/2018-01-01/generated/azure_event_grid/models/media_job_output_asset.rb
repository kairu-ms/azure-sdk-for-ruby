# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # The event data for a Job output asset.
    #
    class MediaJobOutputAsset < MediaJobOutput

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.JobOutputAsset"
      end

      attr_accessor :odatatype

      # @return [String] Gets the Job output asset name.
      attr_accessor :asset_name


      #
      # Mapper for MediaJobOutputAsset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.JobOutputAsset',
          type: {
            name: 'Composite',
            class_name: 'MediaJobOutputAsset',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'MediaJobError'
                }
              },
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              progress: {
                client_side_validation: true,
                required: true,
                serialized_name: 'progress',
                type: {
                  name: 'Number'
                }
              },
              state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'MediaJobState'
                }
              },
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              asset_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'assetName',
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
