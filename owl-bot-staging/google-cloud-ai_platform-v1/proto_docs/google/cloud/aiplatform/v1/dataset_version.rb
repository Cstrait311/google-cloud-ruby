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


module Google
  module Cloud
    module AIPlatform
      module V1
        # Describes the dataset version.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the DatasetVersion.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this DatasetVersion was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this DatasetVersion was last updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Used to perform consistent read-modify-write updates. If not set, a blind
        #     "overwrite" update happens.
        # @!attribute [r] big_query_dataset_name
        #   @return [::String]
        #     Output only. Name of the associated BigQuery dataset.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The user-defined name of the DatasetVersion.
        #     The name can be up to 128 characters long and can consist of any UTF-8
        #     characters.
        # @!attribute [r] metadata
        #   @return [::Google::Protobuf::Value]
        #     Required. Output only. Additional information about the DatasetVersion.
        # @!attribute [r] model_reference
        #   @return [::String]
        #     Output only. Reference to the public base model last used by the dataset
        #     version. Only set for prompt dataset versions.
        class DatasetVersion
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
