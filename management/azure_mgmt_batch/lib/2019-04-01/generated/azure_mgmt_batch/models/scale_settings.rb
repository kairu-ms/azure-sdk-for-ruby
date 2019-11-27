# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_04_01
  module Models
    #
    # Scale settings for the pool

    # Defines the desired size of the pool. This can either be 'fixedScale'
    # where the requested targetDedicatedNodes is specified, or 'autoScale'
    # which defines a formula which is periodically reevaluated. If this
    # property is not specified, the pool will have a fixed scale with 0
    # targetDedicatedNodes.
    #
    class ScaleSettings

      include MsRestAzure

      # @return [FixedScaleSettings] Fixed scale settings for the pool. This
      # property and autoScale are mutually exclusive and one of the properties
      # must be specified.
      attr_accessor :fixed_scale

      # @return [AutoScaleSettings] AutoScale settings for the pool. This
      # property and fixedScale are mutually exclusive and one of the
      # properties must be specified.
      attr_accessor :auto_scale


      #
      # Mapper for ScaleSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScaleSettings',
          type: {
            name: 'Composite',
            class_name: 'ScaleSettings',
            model_properties: {
              fixed_scale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fixedScale',
                type: {
                  name: 'Composite',
                  class_name: 'FixedScaleSettings'
                }
              },
              auto_scale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'autoScale',
                type: {
                  name: 'Composite',
                  class_name: 'AutoScaleSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
