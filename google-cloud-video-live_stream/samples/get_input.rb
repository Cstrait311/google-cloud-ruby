# Copyright 2022 Google, Inc
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

# [START livestream_get_input]
require "google/cloud/video/live_stream"

##
# Get an input endpoint
#
# @param project_id [String] Your Google Cloud project (e.g. "my-project")
# @param location [String] The location (e.g. "us-central1")
# @param input_id [String] Your input name (e.g. "my-input")
#
def get_input project_id:, location:, input_id:
  # Create a Live Stream client.
  client = Google::Cloud::Video::LiveStream.livestream_service

  # Build the resource name of the input.
  name = client.input_path project: project_id, location: location, input: input_id

  # Get the input.
  input = client.get_input name: name

  # Print the input name.
  puts "Input: #{input.name}"
end
# [END livestream_get_input]