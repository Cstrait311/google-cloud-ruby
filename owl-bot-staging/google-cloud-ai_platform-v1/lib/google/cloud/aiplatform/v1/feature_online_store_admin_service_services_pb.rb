# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/feature_online_store_admin_service.proto for package 'Google.Cloud.AIPlatform.V1'
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
require 'google/cloud/aiplatform/v1/feature_online_store_admin_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module FeatureOnlineStoreAdminService
          # The service that handles CRUD and List for resources for
          # FeatureOnlineStore.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.FeatureOnlineStoreAdminService'

            # Creates a new FeatureOnlineStore in a given project and location.
            rpc :CreateFeatureOnlineStore, ::Google::Cloud::AIPlatform::V1::CreateFeatureOnlineStoreRequest, ::Google::Longrunning::Operation
            # Gets details of a single FeatureOnlineStore.
            rpc :GetFeatureOnlineStore, ::Google::Cloud::AIPlatform::V1::GetFeatureOnlineStoreRequest, ::Google::Cloud::AIPlatform::V1::FeatureOnlineStore
            # Lists FeatureOnlineStores in a given project and location.
            rpc :ListFeatureOnlineStores, ::Google::Cloud::AIPlatform::V1::ListFeatureOnlineStoresRequest, ::Google::Cloud::AIPlatform::V1::ListFeatureOnlineStoresResponse
            # Updates the parameters of a single FeatureOnlineStore.
            rpc :UpdateFeatureOnlineStore, ::Google::Cloud::AIPlatform::V1::UpdateFeatureOnlineStoreRequest, ::Google::Longrunning::Operation
            # Deletes a single FeatureOnlineStore. The FeatureOnlineStore must not
            # contain any FeatureViews.
            rpc :DeleteFeatureOnlineStore, ::Google::Cloud::AIPlatform::V1::DeleteFeatureOnlineStoreRequest, ::Google::Longrunning::Operation
            # Creates a new FeatureView in a given FeatureOnlineStore.
            rpc :CreateFeatureView, ::Google::Cloud::AIPlatform::V1::CreateFeatureViewRequest, ::Google::Longrunning::Operation
            # Gets details of a single FeatureView.
            rpc :GetFeatureView, ::Google::Cloud::AIPlatform::V1::GetFeatureViewRequest, ::Google::Cloud::AIPlatform::V1::FeatureView
            # Lists FeatureViews in a given FeatureOnlineStore.
            rpc :ListFeatureViews, ::Google::Cloud::AIPlatform::V1::ListFeatureViewsRequest, ::Google::Cloud::AIPlatform::V1::ListFeatureViewsResponse
            # Updates the parameters of a single FeatureView.
            rpc :UpdateFeatureView, ::Google::Cloud::AIPlatform::V1::UpdateFeatureViewRequest, ::Google::Longrunning::Operation
            # Deletes a single FeatureView.
            rpc :DeleteFeatureView, ::Google::Cloud::AIPlatform::V1::DeleteFeatureViewRequest, ::Google::Longrunning::Operation
            # Triggers on-demand sync for the FeatureView.
            rpc :SyncFeatureView, ::Google::Cloud::AIPlatform::V1::SyncFeatureViewRequest, ::Google::Cloud::AIPlatform::V1::SyncFeatureViewResponse
            # Gets details of a single FeatureViewSync.
            rpc :GetFeatureViewSync, ::Google::Cloud::AIPlatform::V1::GetFeatureViewSyncRequest, ::Google::Cloud::Aiplatform::V1::FeatureViewSync
            # Lists FeatureViewSyncs in a given FeatureView.
            rpc :ListFeatureViewSyncs, ::Google::Cloud::AIPlatform::V1::ListFeatureViewSyncsRequest, ::Google::Cloud::AIPlatform::V1::ListFeatureViewSyncsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
