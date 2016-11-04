# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Description of a NotificationHub GcmCredential.
    #
    class GcmCredential

      include MsRestAzure

      # @return [String] The GCM endpoint.
      attr_accessor :gcm_endpoint

      # @return [String] The Google API key.
      attr_accessor :google_api_key


      #
      # Mapper for GcmCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GcmCredential',
          type: {
            name: 'Composite',
            class_name: 'GcmCredential',
            model_properties: {
              gcm_endpoint: {
                required: false,
                serialized_name: 'properties.gcmEndpoint',
                type: {
                  name: 'String'
                }
              },
              google_api_key: {
                required: false,
                serialized_name: 'properties.googleApiKey',
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
