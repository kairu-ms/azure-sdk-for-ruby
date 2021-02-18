# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_07_01
  module Models
    #
    # Describes a connection monitor output destination.
    #
    class ConnectionMonitorOutput

      include MsRestAzure

      # @return [OutputType] Connection monitor output destination type.
      # Currently, only "Workspace" is supported. Possible values include:
      # 'Workspace'
      attr_accessor :type

      # @return [ConnectionMonitorWorkspaceSettings] Describes the settings for
      # producing output into a log analytics workspace.
      attr_accessor :workspace_settings


      #
      # Mapper for ConnectionMonitorOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorOutput',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorOutput',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              workspace_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workspaceSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectionMonitorWorkspaceSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
