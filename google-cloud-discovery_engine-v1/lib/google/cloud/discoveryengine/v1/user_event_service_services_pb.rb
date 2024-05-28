# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/discoveryengine/v1/user_event_service.proto for package 'Google.Cloud.DiscoveryEngine.V1'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/discoveryengine/v1/user_event_service_pb'

module Google
  module Cloud
    module DiscoveryEngine
      module V1
        module UserEventService
          # Service for ingesting end user actions on a website to Discovery Engine API.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.discoveryengine.v1.UserEventService'

            # Writes a single user event.
            rpc :WriteUserEvent, ::Google::Cloud::DiscoveryEngine::V1::WriteUserEventRequest, ::Google::Cloud::DiscoveryEngine::V1::UserEvent
            # Writes a single user event from the browser. This uses a GET request to
            # due to browser restriction of POST-ing to a third-party domain.
            #
            # This method is used only by the Discovery Engine API JavaScript pixel and
            # Google Tag Manager. Users should not call this method directly.
            rpc :CollectUserEvent, ::Google::Cloud::DiscoveryEngine::V1::CollectUserEventRequest, ::Google::Api::HttpBody
            # Bulk import of user events. Request processing might be
            # synchronous. Events that already exist are skipped.
            # Use this method for backfilling historical user events.
            #
            # Operation.response is of type ImportResponse. Note that it is
            # possible for a subset of the items to be successfully inserted.
            # Operation.metadata is of type ImportMetadata.
            rpc :ImportUserEvents, ::Google::Cloud::DiscoveryEngine::V1::ImportUserEventsRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
