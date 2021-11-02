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


module Google
  module Cloud
    module Monitoring
      module MetricsScope
        module V1
          module MetricsScopes
            # Path helper methods for the MetricsScopes API.
            module Paths
              ##
              # Create a fully-qualified MetricsScope resource string.
              #
              # The resource will be in the following format:
              #
              # `locations/global/metricsScope/{metrics_scope}`
              #
              # @param metrics_scope [String]
              #
              # @return [::String]
              def metrics_scope_path metrics_scope:
                "locations/global/metricsScope/#{metrics_scope}"
              end

              ##
              # Create a fully-qualified MonitoredProject resource string.
              #
              # The resource will be in the following format:
              #
              # `locations/global/metricsScopes/{metrics_scope}/projects/{project}`
              #
              # @param metrics_scope [String]
              # @param project [String]
              #
              # @return [::String]
              def monitored_project_path metrics_scope:, project:
                raise ::ArgumentError, "metrics_scope cannot contain /" if metrics_scope.to_s.include? "/"

                "locations/global/metricsScopes/#{metrics_scope}/projects/#{project}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
