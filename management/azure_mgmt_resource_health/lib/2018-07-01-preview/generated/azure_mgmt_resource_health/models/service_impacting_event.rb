# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_08_01_preview
  module Models
    #
    # Lists the service impacting events that may be affecting the health of
    # the resource.
    #
    class ServiceImpactingEvent

      include MsRestAzure

      # @return [DateTime] Timestamp for when the event started.
      attr_accessor :event_start_time

      # @return [DateTime] Timestamp for when event was submitted/detected.
      attr_accessor :event_status_last_modified_time

      # @return [String] Correlation id for the event
      attr_accessor :correlation_id

      # @return [ServiceImpactingEventStatus] Status of the service impacting
      # event.
      attr_accessor :status

      # @return [ServiceImpactingEventIncidentProperties] Properties of the
      # service impacting event.
      attr_accessor :incident_properties


      #
      # Mapper for ServiceImpactingEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'serviceImpactingEvent',
          type: {
            name: 'Composite',
            class_name: 'ServiceImpactingEvent',
            model_properties: {
              event_start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventStartTime',
                type: {
                  name: 'DateTime'
                }
              },
              event_status_last_modified_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventStatusLastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              correlation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'correlationId',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceImpactingEventStatus'
                }
              },
              incident_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'incidentProperties',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceImpactingEventIncidentProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
