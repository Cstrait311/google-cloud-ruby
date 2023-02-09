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
  module Cloud
    module Notebooks
      module V1
        # The definition of an Event for a managed / semi-managed notebook instance.
        # @!attribute [rw] report_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Event report time.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Notebooks::V1::Event::EventType]
        #     Event type.
        # @!attribute [rw] details
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Event details. This field is used to pass event information.
        class Event
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class DetailsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The definition of the event types.
          module EventType

            # Event is not specified.
            EVENT_TYPE_UNSPECIFIED = 0

            # The instance / runtime is idle
            IDLE = 1

            # The instance / runtime is available.
            # This event indicates that instance / runtime underlying compute is
            # operational.
            HEARTBEAT = 2

            # The instance / runtime health is available.
            # This event indicates that instance / runtime health information.
            HEALTH = 3

            # The instance / runtime is available.
            # This event allows instance / runtime to send Host maintenance
            # information to Control Plane.
            # https://cloud.google.com/compute/docs/gpus/gpu-host-maintenance
            MAINTENANCE = 4
          end
        end
      end
    end
  end
end

