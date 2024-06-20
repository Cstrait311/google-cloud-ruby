# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/monitoring/v3/notification_service.proto for package 'Google.Cloud.Monitoring.V3'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/monitoring/v3/notification_service_pb'

module Google
  module Cloud
    module Monitoring
      module V3
        module NotificationChannelService
          # The Notification Channel API provides access to configuration that
          # controls how messages related to incidents are sent.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.monitoring.v3.NotificationChannelService'

            # Lists the descriptors for supported channel types. The use of descriptors
            # makes it possible for new channel types to be dynamically added.
            rpc :ListNotificationChannelDescriptors, ::Google::Cloud::Monitoring::V3::ListNotificationChannelDescriptorsRequest, ::Google::Cloud::Monitoring::V3::ListNotificationChannelDescriptorsResponse
            # Gets a single channel descriptor. The descriptor indicates which fields
            # are expected / permitted for a notification channel of the given type.
            rpc :GetNotificationChannelDescriptor, ::Google::Cloud::Monitoring::V3::GetNotificationChannelDescriptorRequest, ::Google::Cloud::Monitoring::V3::NotificationChannelDescriptor
            # Lists the notification channels that have been created for the project.
            # To list the types of notification channels that are supported, use
            # the `ListNotificationChannelDescriptors` method.
            rpc :ListNotificationChannels, ::Google::Cloud::Monitoring::V3::ListNotificationChannelsRequest, ::Google::Cloud::Monitoring::V3::ListNotificationChannelsResponse
            # Gets a single notification channel. The channel includes the relevant
            # configuration details with which the channel was created. However, the
            # response may truncate or omit passwords, API keys, or other private key
            # matter and thus the response may not be 100% identical to the information
            # that was supplied in the call to the create method.
            rpc :GetNotificationChannel, ::Google::Cloud::Monitoring::V3::GetNotificationChannelRequest, ::Google::Cloud::Monitoring::V3::NotificationChannel
            # Creates a new notification channel, representing a single notification
            # endpoint such as an email address, SMS number, or PagerDuty service.
            #
            # Design your application to single-thread API calls that modify the state of
            # notification channels in a single project. This includes calls to
            # CreateNotificationChannel, DeleteNotificationChannel and
            # UpdateNotificationChannel.
            rpc :CreateNotificationChannel, ::Google::Cloud::Monitoring::V3::CreateNotificationChannelRequest, ::Google::Cloud::Monitoring::V3::NotificationChannel
            # Updates a notification channel. Fields not specified in the field mask
            # remain unchanged.
            #
            # Design your application to single-thread API calls that modify the state of
            # notification channels in a single project. This includes calls to
            # CreateNotificationChannel, DeleteNotificationChannel and
            # UpdateNotificationChannel.
            rpc :UpdateNotificationChannel, ::Google::Cloud::Monitoring::V3::UpdateNotificationChannelRequest, ::Google::Cloud::Monitoring::V3::NotificationChannel
            # Deletes a notification channel.
            #
            # Design your application to single-thread API calls that modify the state of
            # notification channels in a single project. This includes calls to
            # CreateNotificationChannel, DeleteNotificationChannel and
            # UpdateNotificationChannel.
            rpc :DeleteNotificationChannel, ::Google::Cloud::Monitoring::V3::DeleteNotificationChannelRequest, ::Google::Protobuf::Empty
            # Causes a verification code to be delivered to the channel. The code
            # can then be supplied in `VerifyNotificationChannel` to verify the channel.
            rpc :SendNotificationChannelVerificationCode, ::Google::Cloud::Monitoring::V3::SendNotificationChannelVerificationCodeRequest, ::Google::Protobuf::Empty
            # Requests a verification code for an already verified channel that can then
            # be used in a call to VerifyNotificationChannel() on a different channel
            # with an equivalent identity in the same or in a different project. This
            # makes it possible to copy a channel between projects without requiring
            # manual reverification of the channel. If the channel is not in the
            # verified state, this method will fail (in other words, this may only be
            # used if the SendNotificationChannelVerificationCode and
            # VerifyNotificationChannel paths have already been used to put the given
            # channel into the verified state).
            #
            # There is no guarantee that the verification codes returned by this method
            # will be of a similar structure or form as the ones that are delivered
            # to the channel via SendNotificationChannelVerificationCode; while
            # VerifyNotificationChannel() will recognize both the codes delivered via
            # SendNotificationChannelVerificationCode() and returned from
            # GetNotificationChannelVerificationCode(), it is typically the case that
            # the verification codes delivered via
            # SendNotificationChannelVerificationCode() will be shorter and also
            # have a shorter expiration (e.g. codes such as "G-123456") whereas
            # GetVerificationCode() will typically return a much longer, websafe base
            # 64 encoded string that has a longer expiration time.
            rpc :GetNotificationChannelVerificationCode, ::Google::Cloud::Monitoring::V3::GetNotificationChannelVerificationCodeRequest, ::Google::Cloud::Monitoring::V3::GetNotificationChannelVerificationCodeResponse
            # Verifies a `NotificationChannel` by proving receipt of the code
            # delivered to the channel as a result of calling
            # `SendNotificationChannelVerificationCode`.
            rpc :VerifyNotificationChannel, ::Google::Cloud::Monitoring::V3::VerifyNotificationChannelRequest, ::Google::Cloud::Monitoring::V3::NotificationChannel
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
