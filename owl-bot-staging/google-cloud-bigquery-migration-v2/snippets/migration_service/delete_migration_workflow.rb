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

# [START bigquerymigration_v2_generated_MigrationService_DeleteMigrationWorkflow_sync]
require "google/cloud/bigquery/migration/v2"

##
# Snippet for the delete_migration_workflow call in the MigrationService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigquery::Migration::V2::MigrationService::Client#delete_migration_workflow.
# It may require modification in order to execute successfully.
#
def delete_migration_workflow
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigquery::Migration::V2::MigrationService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigquery::Migration::V2::DeleteMigrationWorkflowRequest.new

  # Call the delete_migration_workflow method.
  result = client.delete_migration_workflow request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END bigquerymigration_v2_generated_MigrationService_DeleteMigrationWorkflow_sync]
