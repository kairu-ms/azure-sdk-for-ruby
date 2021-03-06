# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2020_06_01
  module Models
    #
    # Deployment What-if operation parameters.
    #
    class ScopedDeploymentWhatIf

      include MsRestAzure

      # @return [String] The location to store the deployment data.
      attr_accessor :location

      # @return [DeploymentWhatIfProperties] The deployment properties.
      attr_accessor :properties


      #
      # Mapper for ScopedDeploymentWhatIf class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScopedDeploymentWhatIf',
          type: {
            name: 'Composite',
            class_name: 'ScopedDeploymentWhatIf',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DeploymentWhatIfProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
