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

require "google/cloud/org_policy/v2/version"

require "google/cloud/org_policy/v2/org_policy/credentials"
require "google/cloud/org_policy/v2/org_policy/paths"
require "google/cloud/org_policy/v2/org_policy/client"

module Google
  module Cloud
    module OrgPolicy
      module V2
        ##
        # An interface for managing organization policies.
        #
        # The Cloud Org Policy service provides a simple mechanism for organizations to
        # restrict the allowed configurations across their entire Cloud Resource
        # hierarchy.
        #
        # You can use a `policy` to configure restrictions in Cloud resources. For
        # example, you can enforce a `policy` that restricts which Google
        # Cloud Platform APIs can be activated in a certain part of your resource
        # hierarchy, or prevents serial port access to VM instances in a particular
        # folder.
        #
        # `Policies` are inherited down through the resource hierarchy. A `policy`
        # applied to a parent resource automatically applies to all its child resources
        # unless overridden with a `policy` lower in the hierarchy.
        #
        # A `constraint` defines an aspect of a resource's configuration that can be
        # controlled by an organization's policy administrator. `Policies` are a
        # collection of `constraints` that defines their allowable configuration on a
        # particular resource and its child resources.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/org_policy/v2/org_policy"
        #     client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Client.new
        #
        module OrgPolicy
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "org_policy", "helpers.rb"
require "google/cloud/org_policy/v2/org_policy/helpers" if ::File.file? helper_path

