# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2021_01_15
  module Models
    #
    # IpAddressOrRange object
    #
    class IpAddressOrRange

      include MsRestAzure

      # @return [String] A single IPv4 address or a single IPv4 address range
      # in CIDR format. Provided IPs must be well-formatted and cannot be
      # contained in one of the following ranges: 10.0.0.0/8, 100.64.0.0/10,
      # 172.16.0.0/12, 192.168.0.0/16, since these are not enforceable by the
      # IP address filter. Example of valid inputs: “23.40.210.245” or
      # “23.40.210.0/8”.
      attr_accessor :ip_address_or_range


      #
      # Mapper for IpAddressOrRange class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IpAddressOrRange',
          type: {
            name: 'Composite',
            class_name: 'IpAddressOrRange',
            model_properties: {
              ip_address_or_range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipAddressOrRange',
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
