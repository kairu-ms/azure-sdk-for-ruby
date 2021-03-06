# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_1_preview
  module Models
    #
    # The pending certificate signing request result.
    #
    class PendingCertificateSigningRequestResult

      include MsRestAzure

      # @return [String] The pending certificate signing request as Base64
      # encoded string.
      attr_accessor :value


      #
      # Mapper for PendingCertificateSigningRequestResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PendingCertificateSigningRequestResult',
          type: {
            name: 'Composite',
            class_name: 'PendingCertificateSigningRequestResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
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
