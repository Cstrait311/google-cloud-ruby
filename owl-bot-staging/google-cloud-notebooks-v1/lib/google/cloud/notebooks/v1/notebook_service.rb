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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/notebooks/v1/version"

require "google/cloud/notebooks/v1/notebook_service/credentials"
require "google/cloud/notebooks/v1/notebook_service/paths"
require "google/cloud/notebooks/v1/notebook_service/operations"
require "google/cloud/notebooks/v1/notebook_service/client"

module Google
  module Cloud
    module Notebooks
      module V1
        ##
        # API v1 service for Cloud AI Platform Notebooks.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/notebooks/v1/notebook_service"
        #     client = ::Google::Cloud::Notebooks::V1::NotebookService::Client.new
        #
        module NotebookService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "notebook_service", "helpers.rb"
require "google/cloud/notebooks/v1/notebook_service/helpers" if ::File.file? helper_path

