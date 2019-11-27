# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_08_01
  module Models
    #
    # Settings which will be used by the data disks associated to Compute Nodes
    # in the Pool. When using attached data disks, you need to mount and format
    # the disks from within a VM to use them.
    #
    class DataDisk

      include MsRestAzure

      # @return [Integer] The logical unit number. The lun is used to uniquely
      # identify each data disk. If attaching multiple disks, each should have
      # a distinct lun.
      attr_accessor :lun

      # @return [CachingType] The type of caching to be enabled for the data
      # disks. Values are:
      #
      # none - The caching mode for the disk is not enabled.
      # readOnly - The caching mode for the disk is read only.
      # readWrite - The caching mode for the disk is read and write.
      #
      # The default value for caching is none. For information about the
      # caching options see:
      # https://blogs.msdn.microsoft.com/windowsazurestorage/2012/06/27/exploring-windows-azure-drives-disks-and-images/.
      # Possible values include: 'None', 'ReadOnly', 'ReadWrite'
      attr_accessor :caching

      # @return [Integer] The initial disk size in GB when creating new data
      # disk.
      attr_accessor :disk_size_gb

      # @return [StorageAccountType] The storage account type to be used for
      # the data disk. If omitted, the default is "Standard_LRS". Values are:
      #
      # Standard_LRS - The data disk should use standard locally redundant
      # storage.
      # Premium_LRS - The data disk should use premium locally redundant
      # storage. Possible values include: 'Standard_LRS', 'Premium_LRS'
      attr_accessor :storage_account_type


      #
      # Mapper for DataDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataDisk',
          type: {
            name: 'Composite',
            class_name: 'DataDisk',
            model_properties: {
              lun: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lun',
                type: {
                  name: 'Number'
                }
              },
              caching: {
                client_side_validation: true,
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingType'
                }
              },
              disk_size_gb: {
                client_side_validation: true,
                required: true,
                serialized_name: 'diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              storage_account_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountType',
                type: {
                  name: 'Enum',
                  module: 'StorageAccountType'
                }
              }
            }
          }
        }
      end
    end
  end
end
