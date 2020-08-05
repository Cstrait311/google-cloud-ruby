# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/recommender/v1/recommender_service.proto for package 'google.cloud.recommender.v1'
# Original file comments:
# Copyright 2020 Google LLC
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
require 'google/cloud/recommender/v1/recommender_service_pb'

module Google
  module Cloud
    module Recommender
      module V1
        module Recommender
          # Provides insights and recommendations for cloud customers for various
          # categories like performance optimization, cost savings, reliability, feature
          # discovery, etc. Insights and recommendations are generated automatically
          # based on analysis of user resources, configuration and monitoring metrics.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.recommender.v1.Recommender'

            # Lists insights for a Cloud project. Requires the recommender.*.list IAM
            # permission for the specified insight type.
            rpc :ListInsights, Google::Cloud::Recommender::V1::ListInsightsRequest, Google::Cloud::Recommender::V1::ListInsightsResponse
            # Gets the requested insight. Requires the recommender.*.get IAM permission
            # for the specified insight type.
            rpc :GetInsight, Google::Cloud::Recommender::V1::GetInsightRequest, Google::Cloud::Recommender::V1::Insight
            # Marks the Insight State as Accepted. Users can use this method to
            # indicate to the Recommender API that they have applied some action based
            # on the insight. This stops the insight content from being updated.
            #
            # MarkInsightAccepted can be applied to insights in ACTIVE state. Requires
            # the recommender.*.update IAM permission for the specified insight.
            rpc :MarkInsightAccepted, Google::Cloud::Recommender::V1::MarkInsightAcceptedRequest, Google::Cloud::Recommender::V1::Insight
            # Lists recommendations for a Cloud project. Requires the recommender.*.list
            # IAM permission for the specified recommender.
            rpc :ListRecommendations, Google::Cloud::Recommender::V1::ListRecommendationsRequest, Google::Cloud::Recommender::V1::ListRecommendationsResponse
            # Gets the requested recommendation. Requires the recommender.*.get
            # IAM permission for the specified recommender.
            rpc :GetRecommendation, Google::Cloud::Recommender::V1::GetRecommendationRequest, Google::Cloud::Recommender::V1::Recommendation
            # Marks the Recommendation State as Claimed. Users can use this method to
            # indicate to the Recommender API that they are starting to apply the
            # recommendation themselves. This stops the recommendation content from being
            # updated. Associated insights are frozen and placed in the ACCEPTED state.
            #
            # MarkRecommendationClaimed can be applied to recommendations in CLAIMED,
            # SUCCEEDED, FAILED, or ACTIVE state.
            #
            # Requires the recommender.*.update IAM permission for the specified
            # recommender.
            rpc :MarkRecommendationClaimed, Google::Cloud::Recommender::V1::MarkRecommendationClaimedRequest, Google::Cloud::Recommender::V1::Recommendation
            # Marks the Recommendation State as Succeeded. Users can use this method to
            # indicate to the Recommender API that they have applied the recommendation
            # themselves, and the operation was successful. This stops the recommendation
            # content from being updated. Associated insights are frozen and placed in
            # the ACCEPTED state.
            #
            # MarkRecommendationSucceeded can be applied to recommendations in ACTIVE,
            # CLAIMED, SUCCEEDED, or FAILED state.
            #
            # Requires the recommender.*.update IAM permission for the specified
            # recommender.
            rpc :MarkRecommendationSucceeded, Google::Cloud::Recommender::V1::MarkRecommendationSucceededRequest, Google::Cloud::Recommender::V1::Recommendation
            # Marks the Recommendation State as Failed. Users can use this method to
            # indicate to the Recommender API that they have applied the recommendation
            # themselves, and the operation failed. This stops the recommendation content
            # from being updated. Associated insights are frozen and placed in the
            # ACCEPTED state.
            #
            # MarkRecommendationFailed can be applied to recommendations in ACTIVE,
            # CLAIMED, SUCCEEDED, or FAILED state.
            #
            # Requires the recommender.*.update IAM permission for the specified
            # recommender.
            rpc :MarkRecommendationFailed, Google::Cloud::Recommender::V1::MarkRecommendationFailedRequest, Google::Cloud::Recommender::V1::Recommendation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
