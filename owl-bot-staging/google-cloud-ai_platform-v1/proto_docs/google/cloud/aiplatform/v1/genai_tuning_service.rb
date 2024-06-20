# frozen_string_literal: true

# Copyright 2024 Google LLC
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
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client#create_tuning_job GenAiTuningService.CreateTuningJob}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the TuningJob in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] tuning_job
        #   @return [::Google::Cloud::AIPlatform::V1::TuningJob]
        #     Required. The TuningJob to create.
        class CreateTuningJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client#get_tuning_job GenAiTuningService.GetTuningJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the TuningJob resource. Format:
        #     `projects/{project}/locations/{location}/tuningJobs/{tuning_job}`
        class GetTuningJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client#list_tuning_jobs GenAiTuningService.ListTuningJobs}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to list the TuningJobs from.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The standard list filter.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The standard list page token.
        #     Typically obtained via [ListTuningJob.next_page_token][] of the
        #     previous GenAiTuningService.ListTuningJob][] call.
        class ListTuningJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client#list_tuning_jobs GenAiTuningService.ListTuningJobs}
        # @!attribute [rw] tuning_jobs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::TuningJob>]
        #     List of TuningJobs in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListTuningJobsRequest#page_token ListTuningJobsRequest.page_token}
        #     to obtain that page.
        class ListTuningJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client#cancel_tuning_job GenAiTuningService.CancelTuningJob}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the TuningJob to cancel. Format:
        #     `projects/{project}/locations/{location}/tuningJobs/{tuning_job}`
        class CancelTuningJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
