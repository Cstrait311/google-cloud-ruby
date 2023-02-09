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


module Google
  module Cloud
    module GkeMultiCloud
      module V1
        module AwsClusters
          # Path helper methods for the AwsClusters API.
          module Paths
            ##
            # Create a fully-qualified AwsCluster resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/awsClusters/{aws_cluster}`
            #
            # @param project [String]
            # @param location [String]
            # @param aws_cluster [String]
            #
            # @return [::String]
            def aws_cluster_path project:, location:, aws_cluster:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/awsClusters/#{aws_cluster}"
            end

            ##
            # Create a fully-qualified AwsNodePool resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/awsClusters/{aws_cluster}/awsNodePools/{aws_node_pool}`
            #
            # @param project [String]
            # @param location [String]
            # @param aws_cluster [String]
            # @param aws_node_pool [String]
            #
            # @return [::String]
            def aws_node_pool_path project:, location:, aws_cluster:, aws_node_pool:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "aws_cluster cannot contain /" if aws_cluster.to_s.include? "/"

              "projects/#{project}/locations/#{location}/awsClusters/#{aws_cluster}/awsNodePools/#{aws_node_pool}"
            end

            ##
            # Create a fully-qualified AwsServerConfig resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/awsServerConfig`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def aws_server_config_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}/awsServerConfig"
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

