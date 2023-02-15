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

# [START analyticsadmin_v1alpha_generated_AnalyticsAdminService_ListBigQueryLinks_sync]
require "google/analytics/admin/v1alpha"

##
# Snippet for the list_big_query_links call in the AnalyticsAdminService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client#list_big_query_links.
# It may require modification in order to execute successfully.
#
def list_big_query_links
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Analytics::Admin::V1alpha::ListBigQueryLinksRequest.new

  # Call the list_big_query_links method.
  result = client.list_big_query_links request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Analytics::Admin::V1alpha::BigQueryLink.
    p item
  end
end
# [END analyticsadmin_v1alpha_generated_AnalyticsAdminService_ListBigQueryLinks_sync]