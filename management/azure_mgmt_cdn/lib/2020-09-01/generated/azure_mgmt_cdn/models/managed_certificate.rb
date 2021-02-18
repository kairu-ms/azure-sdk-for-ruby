# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Managed Certificate used for https
    #
    class ManagedCertificate < Certificate

      include MsRestAzure


      #
      # Mapper for ManagedCertificate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedCertificate',
          type: {
            name: 'Composite',
            class_name: 'ManagedCertificate',
            model_properties: {
              subject: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subject',
                type: {
                  name: 'String'
                }
              },
              expiration_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expirationDate',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'thumbprint',
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
