# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_07_01
  module Models
    #
    # Post Restore Request
    #
    class PostRestoreRequest

      include MsRestAzure

      # @return [String] Post Restore partition.
      attr_accessor :partition

      # @return [String] Post Restore replica group.
      attr_accessor :replica_group

      # @return [String] Post Restore request id.
      attr_accessor :request_id

      # @return [String] Post Restore Azure file share uri.
      attr_accessor :azure_file_share_uri

      # @return [String] Post Restore Azure status.
      attr_accessor :status

      # @return [String] Post Restore Azure source azure file share uri.
      attr_accessor :source_azure_file_share_uri

      # @return [String] Post Restore Azure failed file list.
      attr_accessor :failed_file_list

      # @return [Array<RestoreFileSpec>] Post Restore restore file spec array.
      attr_accessor :restore_file_spec


      #
      # Mapper for PostRestoreRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PostRestoreRequest',
          type: {
            name: 'Composite',
            class_name: 'PostRestoreRequest',
            model_properties: {
              partition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partition',
                type: {
                  name: 'String'
                }
              },
              replica_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replicaGroup',
                type: {
                  name: 'String'
                }
              },
              request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              azure_file_share_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureFileShareUri',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              source_azure_file_share_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceAzureFileShareUri',
                type: {
                  name: 'String'
                }
              },
              failed_file_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'failedFileList',
                type: {
                  name: 'String'
                }
              },
              restore_file_spec: {
                client_side_validation: true,
                required: false,
                serialized_name: 'restoreFileSpec',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RestoreFileSpecElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RestoreFileSpec'
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
