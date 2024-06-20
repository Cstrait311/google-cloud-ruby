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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/dataplex/v1/version"
require "google/cloud/dataplex/v1/bindings_override"

require "google/cloud/dataplex/v1/dataplex_service/credentials"
require "google/cloud/dataplex/v1/dataplex_service/paths"
require "google/cloud/dataplex/v1/dataplex_service/rest/operations"
require "google/cloud/dataplex/v1/dataplex_service/rest/client"

module Google
  module Cloud
    module Dataplex
      module V1
        ##
        # Dataplex service provides data lakes as a service. The primary resources
        # offered by this service are Lakes, Zones and Assets which collectively allow
        # a data administrator to organize, manage, secure and catalog data across
        # their organization located across cloud projects in a variety of storage
        # systems including Cloud Storage and BigQuery.
        #
        # To load this service and instantiate a REST client:
        #
        #     require "google/cloud/dataplex/v1/dataplex_service/rest"
        #     client = ::Google::Cloud::Dataplex::V1::DataplexService::Rest::Client.new
        #
        module DataplexService
          # Client for the REST transport
          module Rest
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/cloud/dataplex/v1/dataplex_service/rest/helpers" if ::File.file? helper_path
