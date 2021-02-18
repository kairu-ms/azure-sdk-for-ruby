# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_10_01
  module Models
    #
    # Properties pertaining to the ClfsTarget
    #
    class ClfsTarget

      include MsRestAzure

      # @return [String] Resource ID of storage container.
      attr_accessor :target


      #
      # Mapper for ClfsTarget class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClfsTarget',
          type: {
            name: 'Composite',
            class_name: 'ClfsTarget',
            model_properties: {
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
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
