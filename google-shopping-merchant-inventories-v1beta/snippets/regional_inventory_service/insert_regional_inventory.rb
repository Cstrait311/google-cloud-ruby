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

# [START merchantapi_v1beta_generated_RegionalInventoryService_InsertRegionalInventory_sync]
require "google/shopping/merchant/inventories/v1beta"

##
# Snippet for the insert_regional_inventory call in the RegionalInventoryService service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client#insert_regional_inventory.
#
def insert_regional_inventory
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Shopping::Merchant::Inventories::V1beta::InsertRegionalInventoryRequest.new

  # Call the insert_regional_inventory method.
  result = client.insert_regional_inventory request

  # The returned object is of type Google::Shopping::Merchant::Inventories::V1beta::RegionalInventory.
  p result
end
# [END merchantapi_v1beta_generated_RegionalInventoryService_InsertRegionalInventory_sync]
