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

# [START bigtableadmin_v2_generated_BigtableInstanceAdmin_GetCluster_sync]
require "google/cloud/bigtable/admin/v2"

##
# Snippet for the get_cluster call in the BigtableInstanceAdmin service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigtable::Admin::V2::BigtableInstanceAdmin::Client#get_cluster.
# It may require modification in order to execute successfully.
#
def get_cluster
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigtable::Admin::V2::BigtableInstanceAdmin::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigtable::Admin::V2::GetClusterRequest.new

  # Call the get_cluster method.
  result = client.get_cluster request

  # The returned object is of type Google::Cloud::Bigtable::Admin::V2::Cluster.
  p result
end
# [END bigtableadmin_v2_generated_BigtableInstanceAdmin_GetCluster_sync]
