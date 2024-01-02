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

# [START vision_v1p3beta1_generated_ProductSearch_GetReferenceImage_sync]
require "google/cloud/vision/v1p3beta1"

##
# Snippet for the get_reference_image call in the ProductSearch service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Vision::V1p3beta1::ProductSearch::Client#get_reference_image.
# It may require modification in order to execute successfully.
#
def get_reference_image
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Vision::V1p3beta1::ProductSearch::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Vision::V1p3beta1::GetReferenceImageRequest.new

  # Call the get_reference_image method.
  result = client.get_reference_image request

  # The returned object is of type Google::Cloud::Vision::V1p3beta1::ReferenceImage.
  p result
end
# [END vision_v1p3beta1_generated_ProductSearch_GetReferenceImage_sync]
