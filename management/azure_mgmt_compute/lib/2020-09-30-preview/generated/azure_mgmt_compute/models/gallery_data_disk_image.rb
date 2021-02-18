# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30_preview
  module Models
    #
    # This is the data disk image.
    #
    class GalleryDataDiskImage < GalleryDiskImage

      include MsRestAzure

      # @return [Integer] This property specifies the logical unit number of
      # the data disk. This value is used to identify data disks within the
      # Virtual Machine and therefore must be unique for each data disk
      # attached to the Virtual Machine.
      attr_accessor :lun


      #
      # Mapper for GalleryDataDiskImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryDataDiskImage',
          type: {
            name: 'Composite',
            class_name: 'GalleryDataDiskImage',
            model_properties: {
              size_in_gb: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sizeInGB',
                type: {
                  name: 'Number'
                }
              },
              host_caching: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hostCaching',
                type: {
                  name: 'Enum',
                  module: 'HostCaching'
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryArtifactVersionSource'
                }
              },
              lun: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lun',
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
