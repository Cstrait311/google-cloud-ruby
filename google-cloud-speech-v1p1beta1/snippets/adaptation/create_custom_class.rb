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

# [START speech_v1p1beta1_generated_Adaptation_CreateCustomClass_sync]
require "google/cloud/speech/v1p1beta1"

##
# Snippet for the create_custom_class call in the Adaptation service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Speech::V1p1beta1::Adaptation::Client#create_custom_class. It
# may require modification in order to execute successfully.
#
def create_custom_class
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Speech::V1p1beta1::Adaptation::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Speech::V1p1beta1::CreateCustomClassRequest.new

  # Call the create_custom_class method.
  result = client.create_custom_class request

  # The returned object is of type Google::Cloud::Speech::V1p1beta1::CustomClass.
  p result
end
# [END speech_v1p1beta1_generated_Adaptation_CreateCustomClass_sync]
