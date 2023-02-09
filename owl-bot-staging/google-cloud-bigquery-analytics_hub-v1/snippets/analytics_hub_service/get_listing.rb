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

# [START analyticshub_v1_generated_AnalyticsHubService_GetListing_sync]
require "google/cloud/bigquery/analytics_hub/v1"

##
# Snippet for the get_listing call in the AnalyticsHubService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigquery::AnalyticsHub::V1::AnalyticsHubService::Client#get_listing.
# It may require modification in order to execute successfully.
#
def get_listing
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigquery::AnalyticsHub::V1::AnalyticsHubService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigquery::AnalyticsHub::V1::GetListingRequest.new

  # Call the get_listing method.
  result = client.get_listing request

  # The returned object is of type Google::Cloud::Bigquery::AnalyticsHub::V1::Listing.
  p result
end
# [END analyticshub_v1_generated_AnalyticsHubService_GetListing_sync]
