# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/service_management/v1/version"

require "google/cloud/service_management/v1/service_manager/credentials"
require "google/cloud/service_management/v1/service_manager/operations"
require "google/cloud/service_management/v1/service_manager/client"

module Google
  module Cloud
    module ServiceManagement
      module V1
        ##
        # [Google Service Management
        # API](https://cloud.google.com/service-infrastructure/docs/overview)
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/service_management/v1/service_manager"
        #     client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new
        #
        module ServiceManager
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "service_manager", "helpers.rb"
require "google/cloud/service_management/v1/service_manager/helpers" if ::File.file? helper_path

