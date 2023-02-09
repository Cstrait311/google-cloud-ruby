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

# [START bigqueryconnection_v1_generated_ConnectionService_UpdateConnection_sync]
require "google/cloud/bigquery/connection/v1"

##
# Snippet for the update_connection call in the ConnectionService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigquery::Connection::V1::ConnectionService::Client#update_connection.
# It may require modification in order to execute successfully.
#
def update_connection
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigquery::Connection::V1::ConnectionService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigquery::Connection::V1::UpdateConnectionRequest.new

  # Call the update_connection method.
  result = client.update_connection request

  # The returned object is of type Google::Cloud::Bigquery::Connection::V1::Connection.
  p result
end
# [END bigqueryconnection_v1_generated_ConnectionService_UpdateConnection_sync]
