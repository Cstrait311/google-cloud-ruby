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
        module FeaturestoreService
          # Path helper methods for the FeaturestoreService API.
          module Paths
            ##
            # Create a fully-qualified EntityType resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}`
            #
            # @param project [String]
            # @param location [String]
            # @param featurestore [String]
            # @param entity_type [String]
            #
            # @return [::String]
            def entity_type_path project:, location:, featurestore:, entity_type:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "featurestore cannot contain /" if featurestore.to_s.include? "/"

              "projects/#{project}/locations/#{location}/featurestores/#{featurestore}/entityTypes/#{entity_type}"
            end

            ##
            # Create a fully-qualified Feature resource string.
            #
            # @overload feature_path(project:, location:, featurestore:, entity_type:, feature:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param featurestore [String]
            #   @param entity_type [String]
            #   @param feature [String]
            #
            # @overload feature_path(project:, location:, feature_group:, feature:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param feature_group [String]
            #   @param feature [String]
            #
            # @return [::String]
            def feature_path **args
              resources = {
                "entity_type:feature:featurestore:location:project" => (proc do |project:, location:, featurestore:, entity_type:, feature:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "featurestore cannot contain /" if featurestore.to_s.include? "/"
                  raise ::ArgumentError, "entity_type cannot contain /" if entity_type.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/featurestores/#{featurestore}/entityTypes/#{entity_type}/features/#{feature}"
                end),
                "feature:feature_group:location:project" => (proc do |project:, location:, feature_group:, feature:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "feature_group cannot contain /" if feature_group.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/featureGroups/#{feature_group}/features/#{feature}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified FeatureGroup resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/featureGroups/{feature_group}`
            #
            # @param project [String]
            # @param location [String]
            # @param feature_group [String]
            #
            # @return [::String]
            def feature_group_path project:, location:, feature_group:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/featureGroups/#{feature_group}"
            end

            ##
            # Create a fully-qualified Featurestore resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/featurestores/{featurestore}`
            #
            # @param project [String]
            # @param location [String]
            # @param featurestore [String]
            #
            # @return [::String]
            def featurestore_path project:, location:, featurestore:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/featurestores/#{featurestore}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            extend self
          end
        end
      end
    end
  end
end
