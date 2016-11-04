# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Description of a NotificationHub AdmCredential.
    #
    class AdmCredential

      include MsRestAzure

      # @return [String] The client identifier.
      attr_accessor :client_id

      # @return [String] The credential secret access key.
      attr_accessor :client_secret

      # @return [String] The URL of the authorization token.
      attr_accessor :auth_token_url


      #
      # Mapper for AdmCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AdmCredential',
          type: {
            name: 'Composite',
            class_name: 'AdmCredential',
            model_properties: {
              client_id: {
                required: false,
                serialized_name: 'properties.clientId',
                type: {
                  name: 'String'
                }
              },
              client_secret: {
                required: false,
                serialized_name: 'properties.clientSecret',
                type: {
                  name: 'String'
                }
              },
              auth_token_url: {
                required: false,
                serialized_name: 'properties.authTokenUrl',
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
