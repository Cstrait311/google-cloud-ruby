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
    module DiscoveryEngine
      module V1
        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1::SearchService::Client#search SearchService.Search}
        # method.
        # @!attribute [rw] serving_config
        #   @return [::String]
        #     Required. The resource name of the Search serving config, such as
        #     `projects/*/locations/global/collections/default_collection/dataStores/default_data_store/servingConfigs/default_serving_config`.
        #     This field is used to identify the serving configuration name, set
        #     of models used to make the search.
        # @!attribute [rw] branch
        #   @return [::String]
        #     The branch resource name, such as
        #     `projects/*/locations/global/collections/default_collection/dataStores/default_data_store/branches/0`.
        #
        #     Use `default_branch` as the branch ID or leave this field empty, to search
        #     documents under the default branch.
        # @!attribute [rw] query
        #   @return [::String]
        #     Raw search query.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of {::Google::Cloud::DiscoveryEngine::V1::Document Document}s to
        #     return. If unspecified, defaults to a reasonable value. The maximum allowed
        #     value is 100. Values above 100 will be coerced to 100.
        #
        #     If this field is negative, an  `INVALID_ARGUMENT`  is returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token received from a previous
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchService::Client#search SearchService.Search}
        #     call. Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchService::Client#search SearchService.Search}
        #     must match the call that provided the page token. Otherwise, an
        #      `INVALID_ARGUMENT`  error is returned.
        # @!attribute [rw] offset
        #   @return [::Integer]
        #     A 0-indexed integer that specifies the current offset (that is, starting
        #     result location, amongst the
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}s deemed by the API as
        #     relevant) in search results. This field is only considered if
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchRequest#page_token page_token} is
        #     unset.
        #
        #     If this field is negative, an  `INVALID_ARGUMENT`  is returned.
        # @!attribute [rw] user_info
        #   @return [::Google::Cloud::DiscoveryEngine::V1::UserInfo]
        #     Information about the end user.
        #     Highly recommended for analytics. The user_agent string in UserInfo will
        #     be used to deduce device_type for analytics.
        # @!attribute [rw] params
        #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::Value}]
        #     Additional search parameters.
        #
        #     For public website search only, supported values are:
        #
        #     * `user_country_code`: string. Default empty. If set to non-empty, results
        #        are restricted or boosted based on the location provided.
        #     * `search_type`: double. Default empty. Enables non-webpage searching
        #       depending on the value. The only valid non-default value is 1,
        #       which enables image searching.
        # @!attribute [rw] query_expansion_spec
        #   @return [::Google::Cloud::DiscoveryEngine::V1::SearchRequest::QueryExpansionSpec]
        #     The query expansion specification that specifies the conditions under which
        #     query expansion will occur.
        # @!attribute [rw] spell_correction_spec
        #   @return [::Google::Cloud::DiscoveryEngine::V1::SearchRequest::SpellCorrectionSpec]
        #     The spell correction specification that specifies the mode under
        #     which spell correction will take effect.
        # @!attribute [rw] user_pseudo_id
        #   @return [::String]
        #     A unique identifier for tracking visitors. For example, this could be
        #     implemented with an HTTP cookie, which should be able to uniquely identify
        #     a visitor on a single device. This unique identifier should not change if
        #     the visitor logs in or out of the website.
        #
        #     This field should NOT have a fixed value such as `unknown_visitor`.
        #
        #     This should be the same identifier as
        #     {::Google::Cloud::DiscoveryEngine::V1::UserEvent#user_pseudo_id UserEvent.user_pseudo_id}
        #     and
        #     {::Google::Cloud::DiscoveryEngine::V1::CompleteQueryRequest#user_pseudo_id CompleteQueryRequest.user_pseudo_id}
        #
        #     The field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an  `INVALID_ARGUMENT`  error is returned.
        # @!attribute [rw] content_search_spec
        #   @return [::Google::Cloud::DiscoveryEngine::V1::SearchRequest::ContentSearchSpec]
        #     The content search spec that configs the desired behavior of content
        #     search.
        # @!attribute [rw] safe_search
        #   @return [::Boolean]
        #     Whether to turn on safe search. This is only supported for
        #     [ContentConfig.PUBLIC_WEBSITE][].
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
        class SearchRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specification to determine under which conditions query expansion should
          # occur.
          # @!attribute [rw] condition
          #   @return [::Google::Cloud::DiscoveryEngine::V1::SearchRequest::QueryExpansionSpec::Condition]
          #     The condition under which query expansion should occur. Default to
          #     {::Google::Cloud::DiscoveryEngine::V1::SearchRequest::QueryExpansionSpec::Condition::DISABLED Condition.DISABLED}.
          class QueryExpansionSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Enum describing under which condition query expansion should occur.
            module Condition
              # Unspecified query expansion condition. In this case, server behavior
              # defaults to
              # {::Google::Cloud::DiscoveryEngine::V1::SearchRequest::QueryExpansionSpec::Condition::DISABLED Condition.DISABLED}.
              CONDITION_UNSPECIFIED = 0

              # Disabled query expansion. Only the exact search query is used, even if
              # {::Google::Cloud::DiscoveryEngine::V1::SearchResponse#total_size SearchResponse.total_size}
              # is zero.
              DISABLED = 1

              # Automatic query expansion built by the Search API.
              AUTO = 2
            end
          end

          # The specification for query spell correction.
          # @!attribute [rw] mode
          #   @return [::Google::Cloud::DiscoveryEngine::V1::SearchRequest::SpellCorrectionSpec::Mode]
          #     The mode under which spell correction should take effect to
          #     replace the original search query. Default to
          #     {::Google::Cloud::DiscoveryEngine::V1::SearchRequest::SpellCorrectionSpec::Mode::AUTO Mode.AUTO}.
          class SpellCorrectionSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Enum describing under which mode spell correction should occur.
            module Mode
              # Unspecified spell correction mode. In this case, server behavior
              # defaults to
              # {::Google::Cloud::DiscoveryEngine::V1::SearchRequest::SpellCorrectionSpec::Mode::AUTO Mode.AUTO}.
              MODE_UNSPECIFIED = 0

              # Search API will try to find a spell suggestion if there
              # is any and put in the
              # {::Google::Cloud::DiscoveryEngine::V1::SearchResponse#corrected_query SearchResponse.corrected_query}.
              # The spell suggestion will not be used as the search query.
              SUGGESTION_ONLY = 1

              # Automatic spell correction built by the Search API. Search will
              # be based on the corrected query if found.
              AUTO = 2
            end
          end

          # The specification that configs the desired behavior of the UCS content
          # search.
          # @!attribute [rw] snippet_spec
          #   @return [::Google::Cloud::DiscoveryEngine::V1::SearchRequest::ContentSearchSpec::SnippetSpec]
          #     If there is no snippet spec provided, there will be no snippet in the
          #     search result.
          class ContentSearchSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The specification that configs the snippet in the search results.
            # @!attribute [rw] max_snippet_count
            #   @return [::Integer]
            #     Max number of snippets returned in each search result.
            #     If the matching snippets is less than the max_snippet_count, return all
            #     of the snippets; otherwise, return the max_snippet_count.
            #
            #     At most 5 snippets will be returned for each SearchResult.
            # @!attribute [rw] reference_only
            #   @return [::Boolean]
            #     if true, only snippet reference is returned.
            class SnippetSpec
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Protobuf::Value]
          class ParamsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

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
        # {::Google::Cloud::DiscoveryEngine::V1::SearchService::Client#search SearchService.Search}
        # method.
        # @!attribute [rw] results
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::SearchResponse::SearchResult>]
        #     A list of matched documents. The order represents the ranking.
        # @!attribute [rw] total_size
        #   @return [::Integer]
        #     The estimated total count of matched items irrespective of pagination. The
        #     count of {::Google::Cloud::DiscoveryEngine::V1::SearchResponse#results results}
        #     returned by pagination may be less than the
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchResponse#total_size total_size}
        #     that matches.
        # @!attribute [rw] attribution_token
        #   @return [::String]
        #     A unique search token. This should be included in the
        #     {::Google::Cloud::DiscoveryEngine::V1::UserEvent UserEvent} logs resulting from
        #     this search, which enables accurate attribution of search model
        #     performance.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchRequest#page_token SearchRequest.page_token}
        #     to retrieve the next page. If this field is omitted, there are no
        #     subsequent pages.
        # @!attribute [rw] corrected_query
        #   @return [::String]
        #     Contains the spell corrected query, if found. If the spell correction type
        #     is AUTOMATIC, then the search results are based on corrected_query.
        #     Otherwise the original query is used for search.
        class SearchResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents the search results.
          # @!attribute [rw] id
          #   @return [::String]
          #     {::Google::Cloud::DiscoveryEngine::V1::Document#id Document.id} of the
          #     searched {::Google::Cloud::DiscoveryEngine::V1::Document Document}.
          # @!attribute [rw] document
          #   @return [::Google::Cloud::DiscoveryEngine::V1::Document]
          #     The document data snippet in the search response. Only fields that are
          #     marked as retrievable are populated.
          class SearchResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
