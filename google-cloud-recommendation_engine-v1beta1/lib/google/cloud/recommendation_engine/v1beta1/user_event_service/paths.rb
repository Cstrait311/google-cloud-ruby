# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module RecommendationEngine
      module V1beta1
        module UserEventService
          # Path helper methods for the UserEventService API.
          module Paths
            ##
            # Create a fully-qualified EventStore resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/catalogs/{catalog}/eventStores/{event_store}`
            #
            # @param project [String]
            # @param location [String]
            # @param catalog [String]
            # @param event_store [String]
            #
            # @return [::String]
            def event_store_path project:, location:, catalog:, event_store:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "catalog cannot contain /" if catalog.to_s.include? "/"

              "projects/#{project}/locations/#{location}/catalogs/#{catalog}/eventStores/#{event_store}"
            end

            extend self
          end
        end
      end
    end
  end
end

