# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module SecurityCenter
      module V1p1beta1
        # Security Command Center's Notification
        # @!attribute [rw] notification_config_name
        #   @return [::String]
        #     Name of the notification config that generated current notification.
        # @!attribute [rw] finding
        #   @return [::Google::Cloud::SecurityCenter::V1p1beta1::Finding]
        #     If it's a Finding based notification config, this field will be
        #     populated.
        # @!attribute [rw] resource
        #   @return [::Google::Cloud::SecurityCenter::V1p1beta1::Resource]
        #     The Cloud resource tied to the notification.
        class NotificationMessage
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

