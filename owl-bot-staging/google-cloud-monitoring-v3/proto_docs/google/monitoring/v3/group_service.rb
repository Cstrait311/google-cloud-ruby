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
    module Monitoring
      module V3
        # The `ListGroup` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The
        #     [project](https://cloud.google.com/monitoring/api/v3#project_name) whose
        #     groups are to be listed. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]
        # @!attribute [rw] children_of_group
        #   @return [::String]
        #     A group name. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]
        #
        #     Returns groups whose `parent_name` field contains the group
        #     name.  If no groups have this parent, the results are empty.
        # @!attribute [rw] ancestors_of_group
        #   @return [::String]
        #     A group name. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]
        #
        #     Returns groups that are ancestors of the specified group.
        #     The groups are returned in order, starting with the immediate parent and
        #     ending with the most distant ancestor.  If the specified group has no
        #     immediate parent, the results are empty.
        # @!attribute [rw] descendants_of_group
        #   @return [::String]
        #     A group name. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]
        #
        #     Returns the descendants of the specified group.  This is a superset of
        #     the results returned by the `children_of_group` filter, and includes
        #     children-of-children, and so forth.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     A positive number that is the maximum number of results to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     If this field is not empty then it must contain the `next_page_token` value
        #     returned by a previous call to this method.  Using this field causes the
        #     method to return additional results from the previous method call.
        class ListGroupsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `ListGroups` response.
        # @!attribute [rw] group
        #   @return [::Array<::Google::Cloud::Monitoring::V3::Group>]
        #     The groups that match the specified filters.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there are more results than have been returned, then this field is set
        #     to a non-empty value.  To see the additional results,
        #     use that value as `page_token` in the next call to this method.
        class ListGroupsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `GetGroup` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The group to retrieve. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]
        class GetGroupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `CreateGroup` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The
        #     [project](https://cloud.google.com/monitoring/api/v3#project_name) in which
        #     to create the group. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]
        # @!attribute [rw] group
        #   @return [::Google::Cloud::Monitoring::V3::Group]
        #     Required. A group definition. It is an error to define the `name` field
        #     because the system assigns the name.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If true, validate this request but do not create the group.
        class CreateGroupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `UpdateGroup` request.
        # @!attribute [rw] group
        #   @return [::Google::Cloud::Monitoring::V3::Group]
        #     Required. The new definition of the group.  All fields of the existing
        #     group, excepting `name`, are replaced with the corresponding fields of this
        #     group.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If true, validate this request but do not update the existing group.
        class UpdateGroupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `DeleteGroup` request. The default behavior is to be able to delete a
        # single group without any descendants.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The group to delete. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]
        # @!attribute [rw] recursive
        #   @return [::Boolean]
        #     If this field is true, then the request means to delete a group with all
        #     its descendants. Otherwise, the request means to delete a group only when
        #     it has no descendants. The default value is false.
        class DeleteGroupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `ListGroupMembers` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The group whose members are listed. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     A positive number that is the maximum number of results to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     If this field is not empty then it must contain the `next_page_token` value
        #     returned by a previous call to this method.  Using this field causes the
        #     method to return additional results from the previous method call.
        # @!attribute [rw] filter
        #   @return [::String]
        #     An optional [list
        #     filter](https://cloud.google.com/monitoring/api/learn_more#filtering)
        #     describing the members to be returned.  The filter may reference the type,
        #     labels, and metadata of monitored resources that comprise the group. For
        #     example, to return only resources representing Compute Engine VM instances,
        #     use this filter:
        #
        #         `resource.type = "gce_instance"`
        # @!attribute [rw] interval
        #   @return [::Google::Cloud::Monitoring::V3::TimeInterval]
        #     An optional time interval for which results should be returned. Only
        #     members that were part of the group during the specified interval are
        #     included in the response.  If no interval is provided then the group
        #     membership over the last minute is returned.
        class ListGroupMembersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `ListGroupMembers` response.
        # @!attribute [rw] members
        #   @return [::Array<::Google::Api::MonitoredResource>]
        #     A set of monitored resources in the group.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there are more results than have been returned, then this field is
        #     set to a non-empty value.  To see the additional results, use that value as
        #     `page_token` in the next call to this method.
        # @!attribute [rw] total_size
        #   @return [::Integer]
        #     The total number of elements matching this request.
        class ListGroupMembersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
