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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/network_connectivity/v1alpha1/version"

require "google/cloud/network_connectivity/v1alpha1/hub_service/credentials"
require "google/cloud/network_connectivity/v1alpha1/hub_service/paths"
require "google/cloud/network_connectivity/v1alpha1/hub_service/operations"
require "google/cloud/network_connectivity/v1alpha1/hub_service/client"

module Google
  module Cloud
    module NetworkConnectivity
      module V1alpha1
        ##
        # Network Connectivity Center is a hub-and-spoke abstraction for
        # network connectivity management in Google Cloud. It reduces
        # operational complexity through a simple, centralized connectivity management
        # model.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/network_connectivity/v1alpha1/hub_service"
        #     client = ::Google::Cloud::NetworkConnectivity::V1alpha1::HubService::Client.new
        #
        module HubService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "hub_service", "helpers.rb"
require "google/cloud/network_connectivity/v1alpha1/hub_service/helpers" if ::File.file? helper_path

