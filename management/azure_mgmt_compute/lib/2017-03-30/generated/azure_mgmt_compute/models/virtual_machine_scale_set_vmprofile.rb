# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_03_30
  module Models
    #
    # Describes a virtual machine scale set virtual machine profile.
    #
    class VirtualMachineScaleSetVMProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [VirtualMachineScaleSetOSProfile] Specifies the operating
      # system settings for the virtual machines in the scale set.
      attr_accessor :os_profile

      # @return [VirtualMachineScaleSetStorageProfile] Specifies the storage
      # settings for the virtual machine disks.
      attr_accessor :storage_profile

      # @return [VirtualMachineScaleSetNetworkProfile] Specifies properties of
      # the network interfaces of the virtual machines in the scale set.
      attr_accessor :network_profile

      # @return [DiagnosticsProfile] Specifies the boot diagnostic settings
      # state. <br><br>Minimum api-version: 2015-06-15.
      attr_accessor :diagnostics_profile

      # @return [VirtualMachineScaleSetExtensionProfile] Specifies a collection
      # of settings for extensions installed on virtual machines in the scale
      # set.
      attr_accessor :extension_profile

      # @return [String] Specifies that the image or disk that is being used
      # was licensed on-premises. This element is only used for images that
      # contain the Windows Server operating system. <br><br> Possible values
      # are: <br><br> Windows_Client <br><br> Windows_Server <br><br> If this
      # element is included in a request for an update, the value must match
      # the initial value. This value cannot be updated. <br><br> For more
      # information, see [Azure Hybrid Use Benefit for Windows
      # Server](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-hybrid-use-benefit-licensing?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json)
      # <br><br> Minimum api-version: 2015-06-15
      attr_accessor :license_type


      #
      # Mapper for VirtualMachineScaleSetVMProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetVMProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetVMProfile',
            model_properties: {
              os_profile: {
                required: false,
                serialized_name: 'osProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetOSProfile'
                }
              },
              storage_profile: {
                required: false,
                serialized_name: 'storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetStorageProfile'
                }
              },
              network_profile: {
                required: false,
                serialized_name: 'networkProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetNetworkProfile'
                }
              },
              diagnostics_profile: {
                required: false,
                serialized_name: 'diagnosticsProfile',
                type: {
                  name: 'Composite',
                  class_name: 'DiagnosticsProfile'
                }
              },
              extension_profile: {
                required: false,
                serialized_name: 'extensionProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetExtensionProfile'
                }
              },
              license_type: {
                required: false,
                serialized_name: 'licenseType',
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