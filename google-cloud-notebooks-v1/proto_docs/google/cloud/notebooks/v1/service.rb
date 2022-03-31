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
    module Notebooks
      module V1
        # Represents the metadata of the long-running operation.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the operation was created.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the operation finished running.
        # @!attribute [rw] target
        #   @return [::String]
        #     Server-defined resource path for the target of the operation.
        # @!attribute [rw] verb
        #   @return [::String]
        #     Name of the verb executed by the operation.
        # @!attribute [rw] status_message
        #   @return [::String]
        #     Human-readable status of the operation, if any.
        # @!attribute [rw] requested_cancellation
        #   @return [::Boolean]
        #     Identifies whether the user has requested cancellation
        #     of the operation. Operations that have successfully been cancelled
        #     have [Operation.error][] value with a
        #     {::Google::Rpc::Status#code google.rpc.Status.code} of 1, corresponding to `Code.CANCELLED`.
        # @!attribute [rw] api_version
        #   @return [::String]
        #     API version used to start the operation.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     API endpoint name of this operation.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for listing notebook instances.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum return size of the list call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A previous returned page token that can be used to continue listing
        #     from the last result.
        class ListInstancesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for listing notebook instances.
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Cloud::Notebooks::V1::Instance>]
        #     A list of returned instances.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Page token that can be used to continue listing from the last result in the
        #     next list call.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached. For example,
        #     ['us-west1-a', 'us-central1-b'].
        #     A ListInstancesResponse will only contain either instances or unreachables,
        class ListInstancesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for getting a notebook instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class GetInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for creating a notebook instance.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] instance_id
        #   @return [::String]
        #     Required. User-defined unique ID of this instance.
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Notebooks::V1::Instance]
        #     Required. The instance to be created.
        class CreateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for registering a notebook instance.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] instance_id
        #   @return [::String]
        #     Required. User defined unique ID of this instance. The `instance_id` must
        #     be 1 to 63 characters long and contain only lowercase letters,
        #     numeric characters, and dashes. The first character must be a lowercase
        #     letter and the last character cannot be a dash.
        class RegisterInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for setting instance accelerator.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Notebooks::V1::Instance::AcceleratorType]
        #     Required. Type of this accelerator.
        # @!attribute [rw] core_count
        #   @return [::Integer]
        #     Required. Count of cores of this accelerator. Note that not all combinations
        #     of `type` and `core_count` are valid. Check [GPUs on
        #     Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to
        #     find a valid combination. TPUs are not supported.
        class SetInstanceAcceleratorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for setting instance machine type.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] machine_type
        #   @return [::String]
        #     Required. The [Compute Engine machine
        #     type](https://cloud.google.com/compute/docs/machine-types).
        class SetInstanceMachineTypeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for updating instance configurations.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] config
        #   @return [::Google::Cloud::Notebooks::V1::InstanceConfig]
        #     The instance configurations to be updated.
        class UpdateInstanceConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for setting instance labels.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels to apply to this instance.
        #     These can be later modified by the setLabels method
        class SetInstanceLabelsRequest
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
        end

        # Request for updating the Shielded Instance config for a notebook instance.
        # You can only use this method on a stopped instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] shielded_instance_config
        #   @return [::Google::Cloud::Notebooks::V1::Instance::ShieldedInstanceConfig]
        #     ShieldedInstance configuration to be updated.
        class UpdateShieldedInstanceConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for deleting a notebook instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class DeleteInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for starting a notebook instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class StartInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for stopping a notebook instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class StopInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for reseting a notebook instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class ResetInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for notebook instances to report information to Notebooks API.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] vm_id
        #   @return [::String]
        #     Required. The VM hardware token for authenticating the VM.
        #     https://cloud.google.com/compute/docs/instances/verifying-instance-identity
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The metadata reported to Notebooks API. This will be merged to the instance
        #     metadata store
        class ReportInstanceInfoRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class MetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Request for checking if a notebook instance is upgradeable.
        # @!attribute [rw] notebook_instance
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class IsInstanceUpgradeableRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for checking if a notebook instance is upgradeable.
        # @!attribute [rw] upgradeable
        #   @return [::Boolean]
        #     If an instance is upgradeable.
        # @!attribute [rw] upgrade_version
        #   @return [::String]
        #     The version this instance will be upgraded to if calling the upgrade
        #     endpoint. This field will only be populated if field upgradeable is true.
        # @!attribute [rw] upgrade_info
        #   @return [::String]
        #     Additional information about upgrade.
        # @!attribute [rw] upgrade_image
        #   @return [::String]
        #     The new image self link this instance will be upgraded to if calling the
        #     upgrade endpoint. This field will only be populated if field upgradeable
        #     is true.
        class IsInstanceUpgradeableResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for checking if a notebook instance is healthy.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class GetInstanceHealthRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for checking if a notebook instance is healthy.
        # @!attribute [r] health_state
        #   @return [::Google::Cloud::Notebooks::V1::GetInstanceHealthResponse::HealthState]
        #     Output only. Runtime health_state.
        # @!attribute [r] health_info
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Output only. Additional information about instance health.
        #     Example:
        #      healthInfo": {
        #       "docker_proxy_agent_status": "1",
        #       "docker_status": "1",
        #       "jupyterlab_api_status": "-1",
        #       "jupyterlab_status": "-1",
        #       "updated": "2020-10-18 09:40:03.573409"
        #      }
        class GetInstanceHealthResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class HealthInfoEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # If an instance is healthy or not.
          module HealthState
            # The instance substate is unknown.
            HEALTH_STATE_UNSPECIFIED = 0

            # The instance is known to be in an healthy state
            # (for example, critical daemons are running)
            # Applies to ACTIVE state.
            HEALTHY = 1

            # The instance is known to be in an unhealthy state
            # (for example, critical daemons are not running)
            # Applies to ACTIVE state.
            UNHEALTHY = 2

            # The instance has not installed health monitoring agent.
            # Applies to ACTIVE state.
            AGENT_NOT_INSTALLED = 3

            # The instance health monitoring agent is not running.
            # Applies to ACTIVE state.
            AGENT_NOT_RUNNING = 4
          end
        end

        # Request for upgrading a notebook instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class UpgradeInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for rollbacking a notebook instance
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] target_snapshot
        #   @return [::String]
        #     Required. The snapshot for rollback.
        #     Example: "projects/test-project/global/snapshots/krwlzipynril".
        class RollbackInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for upgrading a notebook instance from within the VM
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] vm_id
        #   @return [::String]
        #     Required. The VM hardware token for authenticating the VM.
        #     https://cloud.google.com/compute/docs/instances/verifying-instance-identity
        class UpgradeInstanceInternalRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for listing environments.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format: `projects/{project_id}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum return size of the list call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A previous returned page token that can be used to continue listing from
        #     the last result.
        class ListEnvironmentsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for listing environments.
        # @!attribute [rw] environments
        #   @return [::Array<::Google::Cloud::Notebooks::V1::Environment>]
        #     A list of returned environments.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A page token that can be used to continue listing from the last result
        #     in the next list call.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListEnvironmentsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for getting a notebook environment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/environments/{environment_id}`
        class GetEnvironmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for creating a notebook environment.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format: `projects/{project_id}/locations/{location}`
        # @!attribute [rw] environment_id
        #   @return [::String]
        #     Required. User-defined unique ID of this environment. The `environment_id` must
        #     be 1 to 63 characters long and contain only lowercase letters,
        #     numeric characters, and dashes. The first character must be a lowercase
        #     letter and the last character cannot be a dash.
        # @!attribute [rw] environment
        #   @return [::Google::Cloud::Notebooks::V1::Environment]
        #     Required. The environment to be created.
        class CreateEnvironmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for deleting a notebook environment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/environments/{environment_id}`
        class DeleteEnvironmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for listing scheduled notebook job.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum return size of the list call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A previous returned page token that can be used to continue listing
        #     from the last result.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filter applied to resulting schedules.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Field to order results by.
        class ListSchedulesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for listing scheduled notebook job.
        # @!attribute [rw] schedules
        #   @return [::Array<::Google::Cloud::Notebooks::V1::Schedule>]
        #     A list of returned instances.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Page token that can be used to continue listing from the last result in the
        #     next list call.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Schedules that could not be reached. For example:
        #
        #         ['projects/{project_id}/location/{location}/schedules/monthly_digest',
        #          'projects/{project_id}/location/{location}/schedules/weekly_sentiment']
        class ListSchedulesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for getting scheduled notebook.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
        class GetScheduleRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for deleting an Schedule
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
        class DeleteScheduleRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for created scheduled notebooks
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] schedule_id
        #   @return [::String]
        #     Required. User-defined unique ID of this schedule.
        # @!attribute [rw] schedule
        #   @return [::Google::Cloud::Notebooks::V1::Schedule]
        #     Required. The schedule to be created.
        class CreateScheduleRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for created scheduled notebooks
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}/schedules/{schedule_id}`
        class TriggerScheduleRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for listing scheduled notebook executions.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum return size of the list call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A previous returned page token that can be used to continue listing
        #     from the last result.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filter applied to resulting executions. Currently only supports filtering
        #     executions by a specified schedule_id.
        #     Format: `schedule_id=<Schedule_ID>`
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Sort by field.
        class ListExecutionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for listing scheduled notebook executions
        # @!attribute [rw] executions
        #   @return [::Array<::Google::Cloud::Notebooks::V1::Execution>]
        #     A list of returned instances.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Page token that can be used to continue listing from the last result in the
        #     next list call.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Executions IDs that could not be reached. For example:
        #
        #         ['projects/{project_id}/location/{location}/executions/imagenet_test1',
        #          'projects/{project_id}/location/{location}/executions/classifier_train1']
        class ListExecutionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for getting scheduled notebook execution
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/executions/{execution_id}`
        class GetExecutionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for deleting a scheduled notebook execution
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `projects/{project_id}/locations/{location}/executions/{execution_id}`
        class DeleteExecutionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to create notebook execution
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Format:
        #     `parent=projects/{project_id}/locations/{location}`
        # @!attribute [rw] execution_id
        #   @return [::String]
        #     Required. User-defined unique ID of this execution.
        # @!attribute [rw] execution
        #   @return [::Google::Cloud::Notebooks::V1::Execution]
        #     Required. The execution to be created.
        class CreateExecutionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
