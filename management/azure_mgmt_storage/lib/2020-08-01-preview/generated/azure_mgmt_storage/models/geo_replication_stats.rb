# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2020_08_01_preview
  module Models
    #
    # Statistics related to replication for storage account's Blob, Table,
    # Queue and File services. It is only available when geo-redundant
    # replication is enabled for the storage account.
    #
    class GeoReplicationStats

      include MsRestAzure

      # @return [GeoReplicationStatus] The status of the secondary location.
      # Possible values are: - Live: Indicates that the secondary location is
      # active and operational. - Bootstrap: Indicates initial synchronization
      # from the primary location to the secondary location is in progress.This
      # typically occurs when replication is first enabled. - Unavailable:
      # Indicates that the secondary location is temporarily unavailable.
      # Possible values include: 'Live', 'Bootstrap', 'Unavailable'
      attr_accessor :status

      # @return [DateTime] All primary writes preceding this UTC date/time
      # value are guaranteed to be available for read operations. Primary
      # writes following this point in time may or may not be available for
      # reads. Element may be default value if value of LastSyncTime is not
      # available, this can happen if secondary is offline or we are in
      # bootstrap.
      attr_accessor :last_sync_time

      # @return [Boolean] A boolean flag which indicates whether or not account
      # failover is supported for the account.
      attr_accessor :can_failover


      #
      # Mapper for GeoReplicationStats class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GeoReplicationStats',
          type: {
            name: 'Composite',
            class_name: 'GeoReplicationStats',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              last_sync_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastSyncTime',
                type: {
                  name: 'DateTime'
                }
              },
              can_failover: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'canFailover',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
