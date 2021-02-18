# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # An Azure Cosmos DB database account.
    #
    class DatabaseAccountGetResults < ARMResourceProperties

      include MsRestAzure

      # @return [DatabaseAccountKind] Indicates the type of database account.
      # This can only be set at database account creation. Possible values
      # include: 'GlobalDocumentDB', 'MongoDB', 'Parse'. Default value:
      # 'GlobalDocumentDB' .
      attr_accessor :kind

      # @return [String]
      attr_accessor :provisioning_state

      # @return [String] The connection endpoint for the Cosmos DB database
      # account.
      attr_accessor :document_endpoint

      # @return [DatabaseAccountOfferType] The offer type for the Cosmos DB
      # database account. Default value: Standard. Possible values include:
      # 'Standard'
      attr_accessor :database_account_offer_type

      # @return [Array<IpAddressOrRange>] List of IpRules.
      attr_accessor :ip_rules

      # @return [Boolean] Flag to indicate whether to enable/disable Virtual
      # Network ACL rules.
      attr_accessor :is_virtual_network_filter_enabled

      # @return [Boolean] Enables automatic failover of the write region in the
      # rare event that the region is unavailable due to an outage. Automatic
      # failover will result in a new write region for the account and is
      # chosen based on the failover priorities configured for the account.
      attr_accessor :enable_automatic_failover

      # @return [ConsistencyPolicy] The consistency policy for the Cosmos DB
      # database account.
      attr_accessor :consistency_policy

      # @return [Array<Capability>] List of Cosmos DB capabilities for the
      # account
      attr_accessor :capabilities

      # @return [Array<Location>] An array that contains the write location for
      # the Cosmos DB account.
      attr_accessor :write_locations

      # @return [Array<Location>] An array that contains of the read locations
      # enabled for the Cosmos DB account.
      attr_accessor :read_locations

      # @return [Array<Location>] An array that contains all of the locations
      # enabled for the Cosmos DB account.
      attr_accessor :locations

      # @return [Array<FailoverPolicy>] An array that contains the regions
      # ordered by their failover priorities.
      attr_accessor :failover_policies

      # @return [Array<VirtualNetworkRule>] List of Virtual Network ACL rules
      # configured for the Cosmos DB account.
      attr_accessor :virtual_network_rules

      # @return [Array<PrivateEndpointConnection>] List of Private Endpoint
      # Connections configured for the Cosmos DB account.
      attr_accessor :private_endpoint_connections

      # @return [Boolean] Enables the account to write in multiple locations
      attr_accessor :enable_multiple_write_locations

      # @return [Boolean] Enables the cassandra connector on the Cosmos DB C*
      # account
      attr_accessor :enable_cassandra_connector

      # @return [ConnectorOffer] The cassandra connector offer type for the
      # Cosmos DB database C* account. Possible values include: 'Small'
      attr_accessor :connector_offer

      # @return [Boolean] Disable write operations on metadata resources
      # (databases, containers, throughput) via account keys
      attr_accessor :disable_key_based_metadata_write_access

      # @return [String] The URI of the key vault
      attr_accessor :key_vault_key_uri

      # @return [PublicNetworkAccess] Whether requests from Public Network are
      # allowed. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :public_network_access

      # @return [Boolean] Flag to indicate whether Free Tier is enabled.
      attr_accessor :enable_free_tier

      # @return [ApiProperties] API specific properties.
      attr_accessor :api_properties

      # @return [Boolean] Flag to indicate whether to enable storage analytics.
      attr_accessor :enable_analytical_storage

      # @return [String] A unique identifier assigned to the database account
      attr_accessor :instance_id

      # @return [CreateMode] Enum to indicate the mode of account creation.
      # Possible values include: 'Default', 'Restore'. Default value: 'Default'
      # .
      attr_accessor :create_mode

      # @return [RestoreParameters] Parameters to indicate the information
      # about the restore.
      attr_accessor :restore_parameters

      # @return [BackupPolicy] The object representing the policy for taking
      # backups on an account.
      attr_accessor :backup_policy

      # @return [Array<CorsPolicy>] The CORS policy for the Cosmos DB database
      # account.
      attr_accessor :cors

      # @return [SystemData] The system meta data relating to this resource.
      attr_accessor :system_data


      #
      # Mapper for DatabaseAccountGetResults class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseAccountGetResults',
          type: {
            name: 'Composite',
            class_name: 'DatabaseAccountGetResults',
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
                required: false,
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
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedServiceIdentity'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                default_value: 'GlobalDocumentDB',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              document_endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.documentEndpoint',
                type: {
                  name: 'String'
                }
              },
              database_account_offer_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseAccountOfferType',
                type: {
                  name: 'Enum',
                  module: 'DatabaseAccountOfferType'
                }
              },
              ip_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IpAddressOrRangeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IpAddressOrRange'
                      }
                  }
                }
              },
              is_virtual_network_filter_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isVirtualNetworkFilterEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              enable_automatic_failover: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableAutomaticFailover',
                type: {
                  name: 'Boolean'
                }
              },
              consistency_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.consistencyPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ConsistencyPolicy'
                }
              },
              capabilities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.capabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Capability'
                      }
                  }
                }
              },
              write_locations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.writeLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Location'
                      }
                  }
                }
              },
              read_locations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.readLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Location'
                      }
                  }
                }
              },
              locations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.locations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Location'
                      }
                  }
                }
              },
              failover_policies: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.failoverPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FailoverPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FailoverPolicy'
                      }
                  }
                }
              },
              virtual_network_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualNetworkRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetworkRule'
                      }
                  }
                }
              },
              private_endpoint_connections: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              enable_multiple_write_locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableMultipleWriteLocations',
                type: {
                  name: 'Boolean'
                }
              },
              enable_cassandra_connector: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableCassandraConnector',
                type: {
                  name: 'Boolean'
                }
              },
              connector_offer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.connectorOffer',
                type: {
                  name: 'String'
                }
              },
              disable_key_based_metadata_write_access: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disableKeyBasedMetadataWriteAccess',
                type: {
                  name: 'Boolean'
                }
              },
              key_vault_key_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.keyVaultKeyUri',
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
              enable_free_tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableFreeTier',
                type: {
                  name: 'Boolean'
                }
              },
              api_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.apiProperties',
                type: {
                  name: 'Composite',
                  class_name: 'ApiProperties'
                }
              },
              enable_analytical_storage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableAnalyticalStorage',
                type: {
                  name: 'Boolean'
                }
              },
              instance_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceId',
                type: {
                  name: 'String'
                }
              },
              create_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createMode',
                default_value: 'Default',
                type: {
                  name: 'String'
                }
              },
              restore_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.restoreParameters',
                type: {
                  name: 'Composite',
                  class_name: 'RestoreParameters'
                }
              },
              backup_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backupPolicy',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'BackupPolicy',
                  class_name: 'BackupPolicy'
                }
              },
              cors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CorsPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CorsPolicy'
                      }
                  }
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              }
            }
          }
        }
      end
    end
  end
end
