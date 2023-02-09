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
    module ServiceControl
      module V1
        # Represents information regarding an operation.
        # @!attribute [rw] operation_id
        #   @return [::String]
        #     Identity of the operation. This must be unique within the scope of the
        #     service that generated the operation. If the service calls
        #     Check() and Report() on the same operation, the two calls should carry
        #     the same id.
        #
        #     UUID version 4 is recommended, though not required.
        #     In scenarios where an operation is computed from existing information
        #     and an idempotent id is desirable for deduplication purpose, UUID version 5
        #     is recommended. See RFC 4122 for details.
        # @!attribute [rw] operation_name
        #   @return [::String]
        #     Fully qualified name of the operation. Reserved for future use.
        # @!attribute [rw] consumer_id
        #   @return [::String]
        #     Identity of the consumer who is using the service.
        #     This field should be filled in for the operations initiated by a
        #     consumer, but not for service-initiated operations that are
        #     not related to a specific consumer.
        #
        #     - This can be in one of the following formats:
        #         - project:PROJECT_ID,
        #         - project`_`number:PROJECT_NUMBER,
        #         - projects/PROJECT_ID or PROJECT_NUMBER,
        #         - folders/FOLDER_NUMBER,
        #         - organizations/ORGANIZATION_NUMBER,
        #         - api`_`key:API_KEY.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Required. Start time of the operation.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     End time of the operation.
        #     Required when the operation is used in
        #     {::Google::Cloud::ServiceControl::V1::ServiceController::Client#report ServiceController.Report},
        #     but optional when the operation is used in
        #     {::Google::Cloud::ServiceControl::V1::ServiceController::Client#check ServiceController.Check}.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels describing the operation. Only the following labels are allowed:
        #
        #     - Labels describing monitored resources as defined in
        #       the service configuration.
        #     - Default labels of metric values. When specified, labels defined in the
        #       metric value override these default.
        #     - The following labels defined by Google Cloud Platform:
        #         - `cloud.googleapis.com/location` describing the location where the
        #            operation happened,
        #         - `servicecontrol.googleapis.com/user_agent` describing the user agent
        #            of the API request,
        #         - `servicecontrol.googleapis.com/service_agent` describing the service
        #            used to handle the API request (e.g. ESP),
        #         - `servicecontrol.googleapis.com/platform` describing the platform
        #            where the API is served, such as App Engine, Compute Engine, or
        #            Kubernetes Engine.
        # @!attribute [rw] metric_value_sets
        #   @return [::Array<::Google::Cloud::ServiceControl::V1::MetricValueSet>]
        #     Represents information about this operation. Each MetricValueSet
        #     corresponds to a metric defined in the service configuration.
        #     The data type used in the MetricValueSet must agree with
        #     the data type specified in the metric definition.
        #
        #     Within a single operation, it is not allowed to have more than one
        #     MetricValue instances that have the same metric names and identical
        #     label value combinations. If a request has such duplicated MetricValue
        #     instances, the entire request is rejected with
        #     an invalid argument error.
        # @!attribute [rw] log_entries
        #   @return [::Array<::Google::Cloud::ServiceControl::V1::LogEntry>]
        #     Represents information to be logged.
        # @!attribute [rw] importance
        #   @return [::Google::Cloud::ServiceControl::V1::Operation::Importance]
        #     DO NOT USE. This is an experimental field.
        # @!attribute [rw] extensions
        #   @return [::Array<::Google::Protobuf::Any>]
        #     Unimplemented.
        class Operation
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

          # Defines the importance of the data contained in the operation.
          module Importance

            # Allows data caching, batching, and aggregation. It provides
            # higher performance with higher data loss risk.
            LOW = 0

            # Disables data aggregation to minimize data loss. It is for operations
            # that contains significant monetary value or audit trail. This feature
            # only applies to the client libraries.
            HIGH = 1
          end
        end
      end
    end
  end
end

