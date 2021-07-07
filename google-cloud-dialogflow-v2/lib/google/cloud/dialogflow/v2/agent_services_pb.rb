# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/agent.proto for package 'google.cloud.dialogflow.v2'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dialogflow/v2/agent_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module Agents
          # Service for managing [Agents][google.cloud.dialogflow.v2.Agent].
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.Agents'

            # Retrieves the specified agent.
            rpc :GetAgent, ::Google::Cloud::Dialogflow::V2::GetAgentRequest, ::Google::Cloud::Dialogflow::V2::Agent
            # Creates/updates the specified agent.
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :SetAgent, ::Google::Cloud::Dialogflow::V2::SetAgentRequest, ::Google::Cloud::Dialogflow::V2::Agent
            # Deletes the specified agent.
            rpc :DeleteAgent, ::Google::Cloud::Dialogflow::V2::DeleteAgentRequest, ::Google::Protobuf::Empty
            # Returns the list of agents.
            #
            # Since there is at most one conversational agent per project, this method is
            # useful primarily for listing all agents across projects the caller has
            # access to. One can achieve that with a wildcard project collection id "-".
            # Refer to [List
            # Sub-Collections](https://cloud.google.com/apis/design/design_patterns#list_sub-collections).
            rpc :SearchAgents, ::Google::Cloud::Dialogflow::V2::SearchAgentsRequest, ::Google::Cloud::Dialogflow::V2::SearchAgentsResponse
            # Trains the specified agent.
            #
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :TrainAgent, ::Google::Cloud::Dialogflow::V2::TrainAgentRequest, ::Google::Longrunning::Operation
            # Exports the specified agent to a ZIP file.
            rpc :ExportAgent, ::Google::Cloud::Dialogflow::V2::ExportAgentRequest, ::Google::Longrunning::Operation
            # Imports the specified agent from a ZIP file.
            #
            # Uploads new intents and entity types without deleting the existing ones.
            # Intents and entity types with the same name are replaced with the new
            # versions from [ImportAgentRequest][google.cloud.dialogflow.v2.ImportAgentRequest]. After the import, the imported draft
            # agent will be trained automatically (unless disabled in agent settings).
            # However, once the import is done, training may not be completed yet. Please
            # call [TrainAgent][google.cloud.dialogflow.v2.Agents.TrainAgent] and wait for the operation it returns in order to train
            # explicitly.
            #
            # An operation which tracks when importing is complete. It only tracks
            # when the draft agent is updated not when it is done training.
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :ImportAgent, ::Google::Cloud::Dialogflow::V2::ImportAgentRequest, ::Google::Longrunning::Operation
            # Restores the specified agent from a ZIP file.
            #
            # Replaces the current agent version with a new one. All the intents and
            # entity types in the older version are deleted. After the restore, the
            # restored draft agent will be trained automatically (unless disabled in
            # agent settings). However, once the restore is done, training may not be
            # completed yet. Please call [TrainAgent][google.cloud.dialogflow.v2.Agents.TrainAgent] and wait for the operation it
            # returns in order to train explicitly.
            #
            # An operation which tracks when restoring is complete. It only tracks
            # when the draft agent is updated not when it is done training.
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :RestoreAgent, ::Google::Cloud::Dialogflow::V2::RestoreAgentRequest, ::Google::Longrunning::Operation
            # Gets agent validation result. Agent validation is performed during
            # training time and is updated automatically when training is completed.
            rpc :GetValidationResult, ::Google::Cloud::Dialogflow::V2::GetValidationResultRequest, ::Google::Cloud::Dialogflow::V2::ValidationResult
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
