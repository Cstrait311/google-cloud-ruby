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
    module DataQnA
      module V1alpha
        # A request to get a previously created question.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The unique identifier for the question.
        #     Example: `projects/foo/locations/bar/questions/1234`
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of fields to be retrieved.
        class GetQuestionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to create a question resource.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the project this data source reference belongs to.
        #     Example: `projects/foo/locations/bar`
        # @!attribute [rw] question
        #   @return [::Google::Cloud::DataQnA::V1alpha::Question]
        #     Required. The question to create.
        class CreateQuestionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to execute an interpretation.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The unique identifier for the question.
        #     Example: `projects/foo/locations/bar/questions/1234`
        # @!attribute [rw] interpretation_index
        #   @return [::Integer]
        #     Required. Index of the interpretation to execute.
        class ExecuteQuestionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to get user feedback.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The unique identifier for the user feedback.
        #     User feedback is a singleton resource on a Question.
        #     Example: `projects/foo/locations/bar/questions/1234/userFeedback`
        class GetUserFeedbackRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to updates user feedback.
        # @!attribute [rw] user_feedback
        #   @return [::Google::Cloud::DataQnA::V1alpha::UserFeedback]
        #     Required. The user feedback to update. This can be called even if there is no
        #     user feedback so far.
        #     The feedback's name field is used to identify the user feedback (and the
        #     corresponding question) to update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of fields to be updated.
        class UpdateUserFeedbackRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
