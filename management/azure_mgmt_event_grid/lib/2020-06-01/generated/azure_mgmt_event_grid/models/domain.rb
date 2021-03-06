# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_06_01
  module Models
    #
    # EventGrid Domain.
    #
    class Domain < TrackedResource

      include MsRestAzure

      # @return [Array<PrivateEndpointConnection>] List of private endpoint
      # connections.
      attr_accessor :private_endpoint_connections

      # @return [DomainProvisioningState] Provisioning state of the domain.
      # Possible values include: 'Creating', 'Updating', 'Deleting',
      # 'Succeeded', 'Canceled', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] Endpoint for the domain.
      attr_accessor :endpoint

      # @return [InputSchema] This determines the format that Event Grid should
      # expect for incoming events published to the domain. Possible values
      # include: 'EventGridSchema', 'CustomEventSchema',
      # 'CloudEventSchemaV1_0'. Default value: 'EventGridSchema' .
      attr_accessor :input_schema

      # @return [InputSchemaMapping] Information about the InputSchemaMapping
      # which specified the info about mapping event payload.
      attr_accessor :input_schema_mapping

      # @return [String] Metric resource id for the domain.
      attr_accessor :metric_resource_id

      # @return [PublicNetworkAccess] This determines if traffic is allowed
      # over public network. By default it is enabled.
      # You can further restrict to specific IPs by configuring <seealso
      # cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.DomainProperties.InboundIpRules"
      # />. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :public_network_access

      # @return [Array<InboundIpRule>] This can be used to restrict traffic
      # from specific IPs instead of all IPs. Note: These are considered only
      # if PublicNetworkAccess is enabled.
      attr_accessor :inbound_ip_rules


      #
      # Mapper for Domain class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Domain',
          type: {
            name: 'Composite',
            class_name: 'Domain',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              private_endpoint_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateEndpointConnections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrivateEndpointConnectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateEndpointConnection'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.endpoint',
                type: {
                  name: 'String'
                }
              },
              input_schema: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.inputSchema',
                default_value: 'EventGridSchema',
                type: {
                  name: 'String'
                }
              },
              input_schema_mapping: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.inputSchemaMapping',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'inputSchemaMappingType',
                  uber_parent: 'InputSchemaMapping',
                  class_name: 'InputSchemaMapping'
                }
              },
              metric_resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.metricResourceId',
                type: {
                  name: 'String'
                }
              },
              public_network_access: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicNetworkAccess',
                type: {
                  name: 'String'
                }
              },
              inbound_ip_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.inboundIpRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InboundIpRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InboundIpRule'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
