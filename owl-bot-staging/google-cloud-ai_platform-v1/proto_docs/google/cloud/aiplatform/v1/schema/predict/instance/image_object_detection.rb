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
        module Schema
          module Predict
            module Instance
              # Prediction input format for Image Object Detection.
              # @!attribute [rw] content
              #   @return [::String]
              #     The image bytes or Cloud Storage URI to make the prediction on.
              # @!attribute [rw] mime_type
              #   @return [::String]
              #     The MIME type of the content of the image. Only the images in below listed
              #     MIME types are supported.
              #     - image/jpeg
              #     - image/gif
              #     - image/png
              #     - image/webp
              #     - image/bmp
              #     - image/tiff
              #     - image/vnd.microsoft.icon
              class ImageObjectDetectionPredictionInstance
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end
        end
      end
    end
  end
end
