# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_04_01
  module Models
    #
    # Fixed scale settings for the pool.
    #
    #
    class FixedScaleSettings

      include MsRestAzure

      # @return [Duration] The timeout for allocation of compute nodes to the
      # pool. The default value is 15 minutes. Timeout values use ISO 8601
      # format. For example, use PT10M for 10 minutes. The minimum value is 5
      # minutes. If you specify a value less than 5 minutes, the Batch service
      # rejects the request with an error; if you are calling the REST API
      # directly, the HTTP status code is 400 (Bad Request).
      attr_accessor :resize_timeout

      # @return [Integer] The desired number of dedicated compute nodes in the
      # pool. At least one of targetDedicatedNodes, targetLowPriority nodes
      # must be set.
      attr_accessor :target_dedicated_nodes

      # @return [Integer] The desired number of low-priority compute nodes in
      # the pool. At least one of targetDedicatedNodes, targetLowPriority nodes
      # must be set.
      attr_accessor :target_low_priority_nodes

      # @return [ComputeNodeDeallocationOption] Determines what to do with a
      # node and its running task(s) if the pool size is decreasing. If
      # omitted, the default value is Requeue. Possible values include:
      # 'Requeue', 'Terminate', 'TaskCompletion', 'RetainedData'
      attr_accessor :node_deallocation_option


      #
      # Mapper for FixedScaleSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FixedScaleSettings',
          type: {
            name: 'Composite',
            class_name: 'FixedScaleSettings',
            model_properties: {
              resize_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resizeTimeout',
                type: {
                  name: 'TimeSpan'
                }
              },
              target_dedicated_nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetDedicatedNodes',
                type: {
                  name: 'Number'
                }
              },
              target_low_priority_nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetLowPriorityNodes',
                type: {
                  name: 'Number'
                }
              },
              node_deallocation_option: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeDeallocationOption',
                type: {
                  name: 'Enum',
                  module: 'ComputeNodeDeallocationOption'
                }
              }
            }
          }
        }
      end
    end
  end
end
