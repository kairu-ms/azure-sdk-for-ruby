# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # List of all Static Routes.
    #
    class StaticRoute

      include MsRestAzure

      # @return [String] The name of the StaticRoute that is unique within a
      # VnetRoute.
      attr_accessor :name

      # @return [Array<String>] List of all address prefixes.
      attr_accessor :address_prefixes

      # @return [String] The ip address of the next hop.
      attr_accessor :next_hop_ip_address


      #
      # Mapper for StaticRoute class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StaticRoute',
          type: {
            name: 'Composite',
            class_name: 'StaticRoute',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              address_prefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'addressPrefixes',
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
              next_hop_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextHopIpAddress',
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
