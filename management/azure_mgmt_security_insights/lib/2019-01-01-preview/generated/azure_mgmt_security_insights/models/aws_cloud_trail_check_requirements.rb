# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Amazon Web Services CloudTrail requirements check request.
    #
    class AwsCloudTrailCheckRequirements < DataConnectorsCheckRequirements

      include MsRestAzure


      def initialize
        @kind = "AmazonWebServicesCloudTrail"
      end

      attr_accessor :kind


      #
      # Mapper for AwsCloudTrailCheckRequirements class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AmazonWebServicesCloudTrail',
          type: {
            name: 'Composite',
            class_name: 'AwsCloudTrailCheckRequirements',
            model_properties: {
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
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
