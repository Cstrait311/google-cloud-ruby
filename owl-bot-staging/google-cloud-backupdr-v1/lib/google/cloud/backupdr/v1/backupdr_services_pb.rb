# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/backupdr/v1/backupdr.proto for package 'Google.Cloud.BackupDR.V1'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/backupdr/v1/backupdr_pb'

module Google
  module Cloud
    module BackupDR
      module V1
        module BackupDR
          # The BackupDR Service
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.backupdr.v1.BackupDR'

            # Lists ManagementServers in a given project and location.
            rpc :ListManagementServers, ::Google::Cloud::BackupDR::V1::ListManagementServersRequest, ::Google::Cloud::BackupDR::V1::ListManagementServersResponse
            # Gets details of a single ManagementServer.
            rpc :GetManagementServer, ::Google::Cloud::BackupDR::V1::GetManagementServerRequest, ::Google::Cloud::BackupDR::V1::ManagementServer
            # Creates a new ManagementServer in a given project and location.
            rpc :CreateManagementServer, ::Google::Cloud::BackupDR::V1::CreateManagementServerRequest, ::Google::Longrunning::Operation
            # Deletes a single ManagementServer.
            rpc :DeleteManagementServer, ::Google::Cloud::BackupDR::V1::DeleteManagementServerRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
