# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2018_12_01
  module Models
    #
    # Contains information about the auto-storage account associated with a
    # Batch account.
    #
    class AutoStorageProperties < AutoStorageBaseProperties

      include MsRestAzure

      # @return [DateTime] The UTC time at which storage keys were last
      # synchronized with the Batch account.
      attr_accessor :last_key_sync


      #
      # Mapper for AutoStorageProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutoStorageProperties',
          type: {
            name: 'Composite',
            class_name: 'AutoStorageProperties',
            model_properties: {
              storage_account_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'storageAccountId',
                type: {
                  name: 'String'
                }
              },
              last_key_sync: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lastKeySync',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
