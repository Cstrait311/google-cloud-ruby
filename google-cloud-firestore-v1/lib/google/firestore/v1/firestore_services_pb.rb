# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/firestore/v1/firestore.proto for package 'Google.Cloud.Firestore.V1'
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
require 'google/firestore/v1/firestore_pb'

module Google
  module Cloud
    module Firestore
      module V1
        module Firestore
          # Specification of the Firestore API.
          #
          # The Cloud Firestore service.
          #
          # Cloud Firestore is a fast, fully managed, serverless, cloud-native NoSQL
          # document database that simplifies storing, syncing, and querying data for
          # your mobile, web, and IoT apps at global scale. Its client libraries provide
          # live synchronization and offline support, while its security features and
          # integrations with Firebase and Google Cloud Platform (GCP) accelerate
          # building truly serverless apps.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.firestore.v1.Firestore'

            # Gets a single document.
            rpc :GetDocument, ::Google::Cloud::Firestore::V1::GetDocumentRequest, ::Google::Cloud::Firestore::V1::Document
            # Lists documents.
            rpc :ListDocuments, ::Google::Cloud::Firestore::V1::ListDocumentsRequest, ::Google::Cloud::Firestore::V1::ListDocumentsResponse
            # Updates or inserts a document.
            rpc :UpdateDocument, ::Google::Cloud::Firestore::V1::UpdateDocumentRequest, ::Google::Cloud::Firestore::V1::Document
            # Deletes a document.
            rpc :DeleteDocument, ::Google::Cloud::Firestore::V1::DeleteDocumentRequest, ::Google::Protobuf::Empty
            # Gets multiple documents.
            #
            # Documents returned by this method are not guaranteed to be returned in the
            # same order that they were requested.
            rpc :BatchGetDocuments, ::Google::Cloud::Firestore::V1::BatchGetDocumentsRequest, stream(::Google::Cloud::Firestore::V1::BatchGetDocumentsResponse)
            # Starts a new transaction.
            rpc :BeginTransaction, ::Google::Cloud::Firestore::V1::BeginTransactionRequest, ::Google::Cloud::Firestore::V1::BeginTransactionResponse
            # Commits a transaction, while optionally updating documents.
            rpc :Commit, ::Google::Cloud::Firestore::V1::CommitRequest, ::Google::Cloud::Firestore::V1::CommitResponse
            # Rolls back a transaction.
            rpc :Rollback, ::Google::Cloud::Firestore::V1::RollbackRequest, ::Google::Protobuf::Empty
            # Runs a query.
            rpc :RunQuery, ::Google::Cloud::Firestore::V1::RunQueryRequest, stream(::Google::Cloud::Firestore::V1::RunQueryResponse)
            # Partitions a query by returning partition cursors that can be used to run
            # the query in parallel. The returned partition cursors are split points that
            # can be used by RunQuery as starting/end points for the query results.
            rpc :PartitionQuery, ::Google::Cloud::Firestore::V1::PartitionQueryRequest, ::Google::Cloud::Firestore::V1::PartitionQueryResponse
            # Streams batches of document updates and deletes, in order.
            rpc :Write, stream(::Google::Cloud::Firestore::V1::WriteRequest), stream(::Google::Cloud::Firestore::V1::WriteResponse)
            # Listens to changes.
            rpc :Listen, stream(::Google::Cloud::Firestore::V1::ListenRequest), stream(::Google::Cloud::Firestore::V1::ListenResponse)
            # Lists all the collection IDs underneath a document.
            rpc :ListCollectionIds, ::Google::Cloud::Firestore::V1::ListCollectionIdsRequest, ::Google::Cloud::Firestore::V1::ListCollectionIdsResponse
            # Applies a batch of write operations.
            #
            # The BatchWrite method does not apply the write operations atomically
            # and can apply them out of order. Method does not allow more than one write
            # per document. Each write succeeds or fails independently. See the
            # [BatchWriteResponse][google.firestore.v1.BatchWriteResponse] for the success status of each write.
            #
            # If you require an atomically applied set of writes, use
            # [Commit][google.firestore.v1.Firestore.Commit] instead.
            rpc :BatchWrite, ::Google::Cloud::Firestore::V1::BatchWriteRequest, ::Google::Cloud::Firestore::V1::BatchWriteResponse
            # Creates a new document.
            rpc :CreateDocument, ::Google::Cloud::Firestore::V1::CreateDocumentRequest, ::Google::Cloud::Firestore::V1::Document
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
