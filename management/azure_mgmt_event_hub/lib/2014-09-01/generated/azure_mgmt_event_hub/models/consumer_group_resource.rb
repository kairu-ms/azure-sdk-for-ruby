# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2014_09_01
  module Models
    #
    # Single item in List or Get Consumer group operation
    #
    class ConsumerGroupResource < Resource

      include MsRestAzure

      # @return [DateTime] Exact time the message was created.
      attr_accessor :created_at

      # @return [String] The path of the Event Hub.
      attr_accessor :event_hub_path

      # @return [DateTime] The exact time the message was updated.
      attr_accessor :updated_at

      # @return [String] The user metadata.
      attr_accessor :user_metadata


      #
      # Mapper for ConsumerGroupResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConsumerGroupResource',
          type: {
            name: 'Composite',
            class_name: 'ConsumerGroupResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              created_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              event_hub_path: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.eventHubPath',
                type: {
                  name: 'String'
                }
              },
              updated_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              user_metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userMetadata',
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
