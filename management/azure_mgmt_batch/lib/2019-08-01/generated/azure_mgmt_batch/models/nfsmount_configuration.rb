# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_08_01
  module Models
    #
    # Information used to connect to an NFS file system.
    #
    #
    class NFSMountConfiguration

      include MsRestAzure

      # @return [String] The URI of the file system to mount.
      attr_accessor :source

      # @return [String] The relative path on the compute node where the file
      # system will be mounted. All file systems are mounted relative to the
      # Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR
      # environment variable.
      attr_accessor :relative_mount_path

      # @return [String] Additional command line options to pass to the mount
      # command. These are 'net use' options in Windows and 'mount' options in
      # Linux.
      attr_accessor :mount_options


      #
      # Mapper for NFSMountConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NFSMountConfiguration',
          type: {
            name: 'Composite',
            class_name: 'NFSMountConfiguration',
            model_properties: {
              source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'source',
                type: {
                  name: 'String'
                }
              },
              relative_mount_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'relativeMountPath',
                type: {
                  name: 'String'
                }
              },
              mount_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mountOptions',
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
