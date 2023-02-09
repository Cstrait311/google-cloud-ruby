# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/optimization/v1/version"

require "google/cloud/optimization/v1/fleet_routing/credentials"
require "google/cloud/optimization/v1/fleet_routing/operations"
require "google/cloud/optimization/v1/fleet_routing/client"

module Google
  module Cloud
    module Optimization
      module V1
        ##
        # A service for optimizing vehicle tours.
        #
        # Validity of certain types of fields:
        #
        #   * `google.protobuf.Timestamp`
        #     * Times are in Unix time: seconds since 1970-01-01T00:00:00+00:00.
        #     * seconds must be in [0, 253402300799],
        #       i.e. in [1970-01-01T00:00:00+00:00, 9999-12-31T23:59:59+00:00].
        #     * nanos must be unset or set to 0.
        #   * `google.protobuf.Duration`
        #     * seconds must be in [0, 253402300799],
        #       i.e. in [1970-01-01T00:00:00+00:00, 9999-12-31T23:59:59+00:00].
        #     * nanos must be unset or set to 0.
        #   * `google.type.LatLng`
        #     * latitude must be in [-90.0, 90.0].
        #     * longitude must be in [-180.0, 180.0].
        #     * at least one of latitude and longitude must be non-zero.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/optimization/v1/fleet_routing"
        #     client = ::Google::Cloud::Optimization::V1::FleetRouting::Client.new
        #
        module FleetRouting
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "fleet_routing", "helpers.rb"
require "google/cloud/optimization/v1/fleet_routing/helpers" if ::File.file? helper_path

