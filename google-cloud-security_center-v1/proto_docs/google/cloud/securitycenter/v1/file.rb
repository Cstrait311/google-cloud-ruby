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


module Google
  module Cloud
    module SecurityCenter
      module V1
        # File information about the related binary/library used by an executable, or
        # the script used by a script interpreter
        # @!attribute [rw] path
        #   @return [::String]
        #     Absolute path of the file as a JSON encoded string.
        # @!attribute [rw] size
        #   @return [::Integer]
        #     Size of the file in bytes.
        # @!attribute [rw] sha256
        #   @return [::String]
        #     SHA256 hash of the first hashed_size bytes of the file encoded as a
        #     hex string.  If hashed_size == size, sha256 represents the SHA256 hash
        #     of the entire file.
        # @!attribute [rw] hashed_size
        #   @return [::Integer]
        #     The length in bytes of the file prefix that was hashed.  If
        #     hashed_size == size, any hashes reported represent the entire
        #     file.
        # @!attribute [rw] partially_hashed
        #   @return [::Boolean]
        #     True when the hash covers only a prefix of the file.
        # @!attribute [rw] contents
        #   @return [::String]
        #     Prefix of the file contents as a JSON encoded string.
        #     (Currently only populated for Malicious Script Executed findings.)
        class File
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

