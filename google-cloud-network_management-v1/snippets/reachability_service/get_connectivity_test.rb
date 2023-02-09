# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START networkmanagement_v1_generated_ReachabilityService_GetConnectivityTest_sync]
require "google/cloud/network_management/v1"

##
# Snippet for the get_connectivity_test call in the ReachabilityService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::NetworkManagement::V1::ReachabilityService::Client#get_connectivity_test.
# It may require modification in order to execute successfully.
#
def get_connectivity_test
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::NetworkManagement::V1::ReachabilityService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::NetworkManagement::V1::GetConnectivityTestRequest.new

  # Call the get_connectivity_test method.
  result = client.get_connectivity_test request

  # The returned object is of type Google::Cloud::NetworkManagement::V1::ConnectivityTest.
  p result
end
# [END networkmanagement_v1_generated_ReachabilityService_GetConnectivityTest_sync]
