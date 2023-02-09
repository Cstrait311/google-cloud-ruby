# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Apps
    module Script
      module Type
        module Calendar
          # Calendar add-on manifest.
          # @!attribute [rw] homepage_trigger
          #   @return [::Google::Apps::Script::Type::HomepageExtensionPoint]
          #     Defines an endpoint that will be executed contexts that don't
          #     match a declared contextual trigger. Any cards generated by this function
          #     will always be available to the user, but may be eclipsed by contextual
          #     content when this add-on declares more targeted triggers.
          #
          #     If present, this overrides the configuration from
          #     `addOns.common.homepageTrigger`.
          # @!attribute [rw] conference_solution
          #   @return [::Array<::Google::Apps::Script::Type::Calendar::ConferenceSolution>]
          #     Defines conference solutions provided by this add-on.
          # @!attribute [rw] create_settings_url_function
          #   @return [::String]
          #     An endpoint to execute that creates a URL to the add-on's settings page.
          # @!attribute [rw] event_open_trigger
          #   @return [::Google::Apps::Script::Type::Calendar::CalendarExtensionPoint]
          #     An endpoint to trigger when an event is opened (viewed/edited).
          # @!attribute [rw] event_update_trigger
          #   @return [::Google::Apps::Script::Type::Calendar::CalendarExtensionPoint]
          #     An endpoint to trigger when the open event is updated.
          # @!attribute [rw] current_event_access
          #   @return [::Google::Apps::Script::Type::Calendar::CalendarAddOnManifest::EventAccess]
          #     Define the level of data access when an event addon is triggered.
          class CalendarAddOnManifest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # An enum defining the level of data access event triggers require.
            module EventAccess

              # Default value when nothing is set for EventAccess.
              UNSPECIFIED = 0

              # METADATA gives event triggers the permission to access the metadata of
              # events such as event id and calendar id.
              METADATA = 1

              # READ gives event triggers access to all provided event fields including
              # the metadata, attendees, and conference data.
              READ = 3

              # WRITE gives event triggers access to the metadata of events and the
              # ability to perform all actions, including adding attendees and setting
              # conference data.
              WRITE = 4

              # READ_WRITE gives event triggers access to all provided event fields
              # including the metadata, attendees, and conference data and the ability to
              # perform all actions.
              READ_WRITE = 5
            end
          end

          # Defines conference related values.
          # @!attribute [rw] on_create_function
          #   @return [::String]
          #     Required. The endpoint to call when ConferenceData should be created.
          # @!attribute [rw] id
          #   @return [::String]
          #     Required. IDs should be unique across ConferenceSolutions within one
          #     add-on, but this is not strictly enforced. It is up to the add-on developer
          #     to assign them uniquely, otherwise the wrong ConferenceSolution may be
          #     used when the add-on is triggered. While the developer may change the
          #     display name of an add-on, the ID should not be changed.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The display name of the ConferenceSolution.
          # @!attribute [rw] logo_url
          #   @return [::String]
          #     Required. The URL for the logo image of the ConferenceSolution.
          class ConferenceSolution
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Common format for declaring a calendar add-on's triggers.
          # @!attribute [rw] run_function
          #   @return [::String]
          #     Required. The endpoint to execute when this extension point is
          #     activated.
          class CalendarExtensionPoint
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end

