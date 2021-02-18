# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_09_01
  module Models
    #
    # Replication properties
    #
    class ReplicationObject

      include MsRestAzure

      # @return [String] Id
      attr_accessor :replication_id

      # @return [EndpointType] Indicates whether the local volume is the source
      # or destination for the Volume Replication. Possible values include:
      # 'src', 'dst'
      attr_accessor :endpoint_type

      # @return [ReplicationSchedule] Schedule. Possible values include:
      # '_10minutely', 'hourly', 'daily'
      attr_accessor :replication_schedule

      # @return [String] The resource ID of the remote volume.
      attr_accessor :remote_volume_resource_id

      # @return [String] The remote region for the other end of the Volume
      # Replication.
      attr_accessor :remote_volume_region


      #
      # Mapper for ReplicationObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'replicationObject',
          type: {
            name: 'Composite',
            class_name: 'ReplicationObject',
            model_properties: {
              replication_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replicationId',
                type: {
                  name: 'String'
                }
              },
              endpoint_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpointType',
                type: {
                  name: 'String'
                }
              },
              replication_schedule: {
                client_side_validation: true,
                required: true,
                serialized_name: 'replicationSchedule',
                type: {
                  name: 'String'
                }
              },
              remote_volume_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'remoteVolumeResourceId',
                type: {
                  name: 'String'
                }
              },
              remote_volume_region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remoteVolumeRegion',
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
