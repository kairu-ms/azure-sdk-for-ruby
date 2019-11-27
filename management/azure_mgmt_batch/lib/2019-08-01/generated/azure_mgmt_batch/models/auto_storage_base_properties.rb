# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_08_01
  module Models
    #
    # The properties related to the auto-storage account.
    #
    class AutoStorageBaseProperties

      include MsRestAzure

      # @return [String] The resource ID of the storage account to be used for
      # auto-storage account.
      attr_accessor :storage_account_id


      #
      # Mapper for AutoStorageBaseProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutoStorageBaseProperties',
          type: {
            name: 'Composite',
            class_name: 'AutoStorageBaseProperties',
            model_properties: {
              storage_account_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'storageAccountId',
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
