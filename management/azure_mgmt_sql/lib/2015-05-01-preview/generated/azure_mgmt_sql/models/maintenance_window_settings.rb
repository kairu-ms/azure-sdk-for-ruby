# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # The properties of managed instance maintenance window.
    #
    class MaintenanceWindowSettings

      include MsRestAzure

      # @return [String] Specifies time of upgrade for maintenance window of
      # managed instance.
      attr_accessor :time_of_upgrade

      # @return [Array<Integer>] Specifies days of the month when maintenance
      # window is to be opened.
      attr_accessor :dates

      # @return [Array<Enum>] Specifies days in a week when maintenance window
      # is to be opened.
      attr_accessor :scheduled_days

      # @return [Array<Integer>] Specifies weeks on which the maintenance
      # window should be opened. E.g. if '1,3' is provided and for
      # ScheduledDays Sunday is provided,
      # that means that window is to be opened on Sunday every first and third
      # week.
      attr_accessor :scheduled_weeks

      # @return [DateTime] Specifies one off start time for a maintenance
      # window. This is the time when window will be opened for the first time.
      attr_accessor :one_off_start_time

      # @return [MaintenanceWindowFrequency] Specifies frequency of a
      # maintenance window.
      # None - No recurring pattern,
      # Daily - Daily window; specified by days of week,
      # Monthly - Monthly window; specified by dates in a month,
      # Flexible - Flexible window; specified by week numbers and days of week.
      # Possible values include: 'NonRecurrent', 'Weekly', 'Monthly',
      # 'Flexible'
      attr_accessor :frequency

      # @return [String] Specifies the timezone for which the window will be
      # set. See reference for TimezoneId of ManagedInstance.
      attr_accessor :customer_time_zone


      #
      # Mapper for MaintenanceWindowSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MaintenanceWindowSettings',
          type: {
            name: 'Composite',
            class_name: 'MaintenanceWindowSettings',
            model_properties: {
              time_of_upgrade: {
                required: false,
                serialized_name: 'timeOfUpgrade',
                type: {
                  name: 'String'
                }
              },
              dates: {
                required: false,
                serialized_name: 'dates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              scheduled_days: {
                required: false,
                serialized_name: 'scheduledDays',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'enumElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              scheduled_weeks: {
                required: false,
                serialized_name: 'scheduledWeeks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              one_off_start_time: {
                required: false,
                serialized_name: 'oneOffStartTime',
                type: {
                  name: 'DateTime'
                }
              },
              frequency: {
                required: true,
                serialized_name: 'frequency',
                type: {
                  name: 'String'
                }
              },
              customer_time_zone: {
                required: true,
                serialized_name: 'customerTimeZone',
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