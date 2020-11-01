# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2020_01_01
  module Models
    #
    # Incident additional data property bag.
    #
    class IncidentAdditionalData

      include MsRestAzure

      # @return [Integer] The number of alerts in the incident
      attr_accessor :alerts_count

      # @return [Integer] The number of bookmarks in the incident
      attr_accessor :bookmarks_count

      # @return [Integer] The number of comments in the incident
      attr_accessor :comments_count

      # @return [Array<String>] List of product names of alerts in the incident
      attr_accessor :alert_product_names

      # @return [Array<AttackTactic>] The tactics associated with incident
      attr_accessor :tactics


      #
      # Mapper for IncidentAdditionalData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IncidentAdditionalData',
          type: {
            name: 'Composite',
            class_name: 'IncidentAdditionalData',
            model_properties: {
              alerts_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'alertsCount',
                type: {
                  name: 'Number'
                }
              },
              bookmarks_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'bookmarksCount',
                type: {
                  name: 'Number'
                }
              },
              comments_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'commentsCount',
                type: {
                  name: 'Number'
                }
              },
              alert_product_names: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'alertProductNames',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              tactics: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tactics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AttackTacticElementType',
                      type: {
                        name: 'String'
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
