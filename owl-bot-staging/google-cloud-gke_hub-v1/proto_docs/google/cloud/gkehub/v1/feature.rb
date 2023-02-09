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
    module GkeHub
      module V1
        # Feature represents the settings and status of any Hub Feature.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The full, unique name of this Feature resource in the format
        #     `projects/*/locations/*/features/*`.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     GCP labels for this Feature.
        # @!attribute [r] resource_state
        #   @return [::Google::Cloud::GkeHub::V1::FeatureResourceState]
        #     Output only. State of the Feature resource itself.
        # @!attribute [rw] spec
        #   @return [::Google::Cloud::GkeHub::V1::CommonFeatureSpec]
        #     Optional. Hub-wide Feature configuration. If this Feature does not support any
        #     Hub-wide configuration, this field may be unused.
        # @!attribute [rw] membership_specs
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::GkeHub::V1::MembershipFeatureSpec}]
        #     Optional. Membership-specific configuration for this Feature. If this Feature does
        #     not support any per-Membership configuration, this field may be unused.
        #
        #     The keys indicate which Membership the configuration is for, in the form:
        #
        #         projects/{p}/locations/{l}/memberships/{m}
        #
        #     Where \\{p} is the project, \\{l} is a valid location and \\{m} is a valid
        #     Membership in this project at that location. \\{p} WILL match the Feature's
        #     project.
        #
        #     \\{p} will always be returned as the project number, but the project ID is
        #     also accepted during input. If the same Membership is specified in the map
        #     twice (using the project ID form, and the project number form), exactly
        #     ONE of the entries will be saved, with no guarantees as to which. For this
        #     reason, it is recommended the same format be used for all entries when
        #     mutating a Feature.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GkeHub::V1::CommonFeatureState]
        #     Output only. The Hub-wide Feature state.
        # @!attribute [r] membership_states
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::GkeHub::V1::MembershipFeatureState}]
        #     Output only. Membership-specific Feature status. If this Feature does
        #     report any per-Membership status, this field may be unused.
        #
        #     The keys indicate which Membership the state is for, in the form:
        #
        #         projects/{p}/locations/{l}/memberships/{m}
        #
        #     Where \\{p} is the project number, \\{l} is a valid location and \\{m} is a valid
        #     Membership in this project at that location. \\{p} MUST match the Feature's
        #     project number.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. When the Feature resource was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. When the Feature resource was last updated.
        # @!attribute [r] delete_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. When the Feature resource was deleted.
        class Feature
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::GkeHub::V1::MembershipFeatureSpec]
          class MembershipSpecsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::GkeHub::V1::MembershipFeatureState]
          class MembershipStatesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # FeatureResourceState describes the state of a Feature *resource* in the
        # GkeHub API. See `FeatureState` for the "running state" of the Feature in the
        # Hub and across Memberships.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::GkeHub::V1::FeatureResourceState::State]
        #     The current state of the Feature resource in the Hub API.
        class FeatureResourceState
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # State describes the lifecycle status of a Feature.
          module State

            # State is unknown or not set.
            STATE_UNSPECIFIED = 0

            # The Feature is being enabled, and the Feature resource is being created.
            # Once complete, the corresponding Feature will be enabled in this Hub.
            ENABLING = 1

            # The Feature is enabled in this Hub, and the Feature resource is fully
            # available.
            ACTIVE = 2

            # The Feature is being disabled in this Hub, and the Feature resource
            # is being deleted.
            DISABLING = 3

            # The Feature resource is being updated.
            UPDATING = 4

            # The Feature resource is being updated by the Hub Service.
            SERVICE_UPDATING = 5
          end
        end

        # FeatureState describes the high-level state of a Feature. It may be used to
        # describe a Feature's state at the environ-level, or per-membershop, depending
        # on the context.
        # @!attribute [rw] code
        #   @return [::Google::Cloud::GkeHub::V1::FeatureState::Code]
        #     The high-level, machine-readable status of this Feature.
        # @!attribute [rw] description
        #   @return [::String]
        #     A human-readable description of the current status.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time this status and any related Feature-specific details were updated.
        class FeatureState
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Code represents a machine-readable, high-level status of the Feature.
          module Code

            # Unknown or not set.
            CODE_UNSPECIFIED = 0

            # The Feature is operating normally.
            OK = 1

            # The Feature has encountered an issue, and is operating in a degraded
            # state. The Feature may need intervention to return to normal operation.
            # See the description and any associated Feature-specific details for more
            # information.
            WARNING = 2

            # The Feature is not operating or is in a severely degraded state.
            # The Feature may need intervention to return to normal operation.
            # See the description and any associated Feature-specific details for more
            # information.
            ERROR = 3
          end
        end

        # CommonFeatureSpec contains Hub-wide configuration information
        # @!attribute [rw] multiclusteringress
        #   @return [::Google::Cloud::GkeHub::MultiClusterIngress::V1::FeatureSpec]
        #     Multicluster Ingress-specific spec.
        class CommonFeatureSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # CommonFeatureState contains Hub-wide Feature status information.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GkeHub::V1::FeatureState]
        #     Output only. The "running state" of the Feature in this Hub.
        class CommonFeatureState
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # MembershipFeatureSpec contains configuration information for a single
        # Membership.
        # @!attribute [rw] configmanagement
        #   @return [::Google::Cloud::GkeHub::ConfigManagement::V1::MembershipSpec]
        #     Config Management-specific spec.
        class MembershipFeatureSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # MembershipFeatureState contains Feature status information for a single
        # Membership.
        # @!attribute [rw] configmanagement
        #   @return [::Google::Cloud::GkeHub::ConfigManagement::V1::MembershipState]
        #     Config Management-specific state.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::GkeHub::V1::FeatureState]
        #     The high-level state of this Feature for a single membership.
        class MembershipFeatureState
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

