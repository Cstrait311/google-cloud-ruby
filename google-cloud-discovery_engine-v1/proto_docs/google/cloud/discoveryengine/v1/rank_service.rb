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
    module DiscoveryEngine
      module V1
        # Record message for
        # {::Google::Cloud::DiscoveryEngine::V1::RankService::Client#rank RankService.Rank} method.
        # @!attribute [rw] id
        #   @return [::String]
        #     The unique ID to represent the record.
        # @!attribute [rw] title
        #   @return [::String]
        #     The title of the record. Empty by default.
        #     At least one of
        #     {::Google::Cloud::DiscoveryEngine::V1::RankingRecord#title title} or
        #     {::Google::Cloud::DiscoveryEngine::V1::RankingRecord#content content} should be
        #     set otherwise an INVALID_ARGUMENT error is thrown.
        # @!attribute [rw] content
        #   @return [::String]
        #     The content of the record. Empty by default.
        #     At least one of
        #     {::Google::Cloud::DiscoveryEngine::V1::RankingRecord#title title} or
        #     {::Google::Cloud::DiscoveryEngine::V1::RankingRecord#content content} should be
        #     set otherwise an INVALID_ARGUMENT error is thrown.
        # @!attribute [rw] score
        #   @return [::Float]
        #     The score of this record based on the given query and selected model.
        class RankingRecord
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1::RankService::Client#rank RankService.Rank} method.
        # @!attribute [rw] ranking_config
        #   @return [::String]
        #     Required. The resource name of the rank service config, such as
        #     `projects/{project_num}/locations/{location_id}/rankingConfigs/default_ranking_config`.
        # @!attribute [rw] model
        #   @return [::String]
        #     The identifier of the model to use. It is one of:
        #
        #     * `semantic-ranker-512@latest`: Semantic ranking model with maxiumn input
        #     token size 512.
        #
        #     It is set to `semantic-ranker-512@latest` by default if unspecified.
        # @!attribute [rw] top_n
        #   @return [::Integer]
        #     The number of results to return. If this is unset or no bigger than zero,
        #     returns all results.
        # @!attribute [rw] query
        #   @return [::String]
        #     The query to use.
        # @!attribute [rw] records
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::RankingRecord>]
        #     Required. A list of records to rank. At most 200 records to rank.
        # @!attribute [rw] ignore_record_details_in_response
        #   @return [::Boolean]
        #     If true, the response will contain only record ID and score. By default, it
        #     is false, the response will contain record details.
        # @!attribute [rw] user_labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The user labels applied to a resource must meet the following requirements:
        #
        #     * Each resource can have multiple labels, up to a maximum of 64.
        #     * Each label must be a key-value pair.
        #     * Keys have a minimum length of 1 character and a maximum length of 63
        #       characters and cannot be empty. Values can be empty and have a maximum
        #       length of 63 characters.
        #     * Keys and values can contain only lowercase letters, numeric characters,
        #       underscores, and dashes. All characters must use UTF-8 encoding, and
        #       international characters are allowed.
        #     * The key portion of a label must be unique. However, you can use the same
        #       key with multiple resources.
        #     * Keys must start with a lowercase letter or international character.
        #
        #     See [Google Cloud
        #     Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
        #     for more details.
        class RankRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class UserLabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1::RankService::Client#rank RankService.Rank} method.
        # @!attribute [rw] records
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::RankingRecord>]
        #     A list of records sorted by descending score.
        class RankResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
