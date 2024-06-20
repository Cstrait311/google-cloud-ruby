# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/metadata_service.proto for package 'Google.Cloud.AIPlatform.V1'
# Original file comments:
# Copyright 2024 Google LLC
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
require 'google/cloud/aiplatform/v1/metadata_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module MetadataService
          # Service for reading and writing metadata entries.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.MetadataService'

            # Initializes a MetadataStore, including allocation of resources.
            rpc :CreateMetadataStore, ::Google::Cloud::AIPlatform::V1::CreateMetadataStoreRequest, ::Google::Longrunning::Operation
            # Retrieves a specific MetadataStore.
            rpc :GetMetadataStore, ::Google::Cloud::AIPlatform::V1::GetMetadataStoreRequest, ::Google::Cloud::AIPlatform::V1::MetadataStore
            # Lists MetadataStores for a Location.
            rpc :ListMetadataStores, ::Google::Cloud::AIPlatform::V1::ListMetadataStoresRequest, ::Google::Cloud::AIPlatform::V1::ListMetadataStoresResponse
            # Deletes a single MetadataStore and all its child resources (Artifacts,
            # Executions, and Contexts).
            rpc :DeleteMetadataStore, ::Google::Cloud::AIPlatform::V1::DeleteMetadataStoreRequest, ::Google::Longrunning::Operation
            # Creates an Artifact associated with a MetadataStore.
            rpc :CreateArtifact, ::Google::Cloud::AIPlatform::V1::CreateArtifactRequest, ::Google::Cloud::AIPlatform::V1::Artifact
            # Retrieves a specific Artifact.
            rpc :GetArtifact, ::Google::Cloud::AIPlatform::V1::GetArtifactRequest, ::Google::Cloud::AIPlatform::V1::Artifact
            # Lists Artifacts in the MetadataStore.
            rpc :ListArtifacts, ::Google::Cloud::AIPlatform::V1::ListArtifactsRequest, ::Google::Cloud::AIPlatform::V1::ListArtifactsResponse
            # Updates a stored Artifact.
            rpc :UpdateArtifact, ::Google::Cloud::AIPlatform::V1::UpdateArtifactRequest, ::Google::Cloud::AIPlatform::V1::Artifact
            # Deletes an Artifact.
            rpc :DeleteArtifact, ::Google::Cloud::AIPlatform::V1::DeleteArtifactRequest, ::Google::Longrunning::Operation
            # Purges Artifacts.
            rpc :PurgeArtifacts, ::Google::Cloud::AIPlatform::V1::PurgeArtifactsRequest, ::Google::Longrunning::Operation
            # Creates a Context associated with a MetadataStore.
            rpc :CreateContext, ::Google::Cloud::AIPlatform::V1::CreateContextRequest, ::Google::Cloud::AIPlatform::V1::Context
            # Retrieves a specific Context.
            rpc :GetContext, ::Google::Cloud::AIPlatform::V1::GetContextRequest, ::Google::Cloud::AIPlatform::V1::Context
            # Lists Contexts on the MetadataStore.
            rpc :ListContexts, ::Google::Cloud::AIPlatform::V1::ListContextsRequest, ::Google::Cloud::AIPlatform::V1::ListContextsResponse
            # Updates a stored Context.
            rpc :UpdateContext, ::Google::Cloud::AIPlatform::V1::UpdateContextRequest, ::Google::Cloud::AIPlatform::V1::Context
            # Deletes a stored Context.
            rpc :DeleteContext, ::Google::Cloud::AIPlatform::V1::DeleteContextRequest, ::Google::Longrunning::Operation
            # Purges Contexts.
            rpc :PurgeContexts, ::Google::Cloud::AIPlatform::V1::PurgeContextsRequest, ::Google::Longrunning::Operation
            # Adds a set of Artifacts and Executions to a Context. If any of the
            # Artifacts or Executions have already been added to a Context, they are
            # simply skipped.
            rpc :AddContextArtifactsAndExecutions, ::Google::Cloud::AIPlatform::V1::AddContextArtifactsAndExecutionsRequest, ::Google::Cloud::AIPlatform::V1::AddContextArtifactsAndExecutionsResponse
            # Adds a set of Contexts as children to a parent Context. If any of the
            # child Contexts have already been added to the parent Context, they are
            # simply skipped. If this call would create a cycle or cause any Context to
            # have more than 10 parents, the request will fail with an INVALID_ARGUMENT
            # error.
            rpc :AddContextChildren, ::Google::Cloud::AIPlatform::V1::AddContextChildrenRequest, ::Google::Cloud::AIPlatform::V1::AddContextChildrenResponse
            # Remove a set of children contexts from a parent Context. If any of the
            # child Contexts were NOT added to the parent Context, they are
            # simply skipped.
            rpc :RemoveContextChildren, ::Google::Cloud::AIPlatform::V1::RemoveContextChildrenRequest, ::Google::Cloud::AIPlatform::V1::RemoveContextChildrenResponse
            # Retrieves Artifacts and Executions within the specified Context, connected
            # by Event edges and returned as a LineageSubgraph.
            rpc :QueryContextLineageSubgraph, ::Google::Cloud::AIPlatform::V1::QueryContextLineageSubgraphRequest, ::Google::Cloud::AIPlatform::V1::LineageSubgraph
            # Creates an Execution associated with a MetadataStore.
            rpc :CreateExecution, ::Google::Cloud::AIPlatform::V1::CreateExecutionRequest, ::Google::Cloud::AIPlatform::V1::Execution
            # Retrieves a specific Execution.
            rpc :GetExecution, ::Google::Cloud::AIPlatform::V1::GetExecutionRequest, ::Google::Cloud::AIPlatform::V1::Execution
            # Lists Executions in the MetadataStore.
            rpc :ListExecutions, ::Google::Cloud::AIPlatform::V1::ListExecutionsRequest, ::Google::Cloud::AIPlatform::V1::ListExecutionsResponse
            # Updates a stored Execution.
            rpc :UpdateExecution, ::Google::Cloud::AIPlatform::V1::UpdateExecutionRequest, ::Google::Cloud::AIPlatform::V1::Execution
            # Deletes an Execution.
            rpc :DeleteExecution, ::Google::Cloud::AIPlatform::V1::DeleteExecutionRequest, ::Google::Longrunning::Operation
            # Purges Executions.
            rpc :PurgeExecutions, ::Google::Cloud::AIPlatform::V1::PurgeExecutionsRequest, ::Google::Longrunning::Operation
            # Adds Events to the specified Execution. An Event indicates whether an
            # Artifact was used as an input or output for an Execution. If an Event
            # already exists between the Execution and the Artifact, the Event is
            # skipped.
            rpc :AddExecutionEvents, ::Google::Cloud::AIPlatform::V1::AddExecutionEventsRequest, ::Google::Cloud::AIPlatform::V1::AddExecutionEventsResponse
            # Obtains the set of input and output Artifacts for this Execution, in the
            # form of LineageSubgraph that also contains the Execution and connecting
            # Events.
            rpc :QueryExecutionInputsAndOutputs, ::Google::Cloud::AIPlatform::V1::QueryExecutionInputsAndOutputsRequest, ::Google::Cloud::AIPlatform::V1::LineageSubgraph
            # Creates a MetadataSchema.
            rpc :CreateMetadataSchema, ::Google::Cloud::AIPlatform::V1::CreateMetadataSchemaRequest, ::Google::Cloud::AIPlatform::V1::MetadataSchema
            # Retrieves a specific MetadataSchema.
            rpc :GetMetadataSchema, ::Google::Cloud::AIPlatform::V1::GetMetadataSchemaRequest, ::Google::Cloud::AIPlatform::V1::MetadataSchema
            # Lists MetadataSchemas.
            rpc :ListMetadataSchemas, ::Google::Cloud::AIPlatform::V1::ListMetadataSchemasRequest, ::Google::Cloud::AIPlatform::V1::ListMetadataSchemasResponse
            # Retrieves lineage of an Artifact represented through Artifacts and
            # Executions connected by Event edges and returned as a LineageSubgraph.
            rpc :QueryArtifactLineageSubgraph, ::Google::Cloud::AIPlatform::V1::QueryArtifactLineageSubgraphRequest, ::Google::Cloud::AIPlatform::V1::LineageSubgraph
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
