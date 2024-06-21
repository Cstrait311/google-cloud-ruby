# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "google/cloud/cloud_controls_partner/v1/version"

require "google/cloud/cloud_controls_partner/v1/cloud_controls_partner_core/credentials"
require "google/cloud/cloud_controls_partner/v1/cloud_controls_partner_core/paths"
require "google/cloud/cloud_controls_partner/v1/cloud_controls_partner_core/client"
require "google/cloud/cloud_controls_partner/v1/cloud_controls_partner_core/rest"

module Google
  module Cloud
    module CloudControlsPartner
      module V1
        ##
        # Service describing handlers for resources
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/cloud_controls_partner/v1/cloud_controls_partner_core"
        #     client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/cloud_controls_partner/v1/cloud_controls_partner_core/rest"
        #     client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Rest::Client.new
        #
        module CloudControlsPartnerCore
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cloud_controls_partner_core", "helpers.rb"
require "google/cloud/cloud_controls_partner/v1/cloud_controls_partner_core/helpers" if ::File.file? helper_path
