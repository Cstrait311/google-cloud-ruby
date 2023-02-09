# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/bigquery/storage/v1/storage.proto for package 'google.cloud.bigquery.storage.v1'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/bigquery/storage/v1/storage_pb'

module Google
  module Cloud
    module Bigquery
      module Storage
        module V1
          module BigQueryRead
            # BigQuery Read API.
            #
            # The Read API can be used to read data from BigQuery.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.bigquery.storage.v1.BigQueryRead'

              # Creates a new read session. A read session divides the contents of a
              # BigQuery table into one or more streams, which can then be used to read
              # data from the table. The read session also specifies properties of the
              # data to be read, such as a list of columns or a push-down filter describing
              # the rows to be returned.
              #
              # A particular row can be read by at most one stream. When the caller has
              # reached the end of each stream in the session, then all the data in the
              # table has been read.
              #
              # Data is assigned to each stream such that roughly the same number of
              # rows can be read from each stream. Because the server-side unit for
              # assigning data is collections of rows, the API does not guarantee that
              # each stream will return the same number or rows. Additionally, the
              # limits are enforced based on the number of pre-filtered rows, so some
              # filters can lead to lopsided assignments.
              #
              # Read sessions automatically expire 6 hours after they are created and do
              # not require manual clean-up by the caller.
              rpc :CreateReadSession, ::Google::Cloud::Bigquery::Storage::V1::CreateReadSessionRequest, ::Google::Cloud::Bigquery::Storage::V1::ReadSession
              # Reads rows from the stream in the format prescribed by the ReadSession.
              # Each response contains one or more table rows, up to a maximum of 100 MiB
              # per response; read requests which attempt to read individual rows larger
              # than 100 MiB will fail.
              #
              # Each request also returns a set of stream statistics reflecting the current
              # state of the stream.
              rpc :ReadRows, ::Google::Cloud::Bigquery::Storage::V1::ReadRowsRequest, stream(::Google::Cloud::Bigquery::Storage::V1::ReadRowsResponse)
              # Splits a given `ReadStream` into two `ReadStream` objects. These
              # `ReadStream` objects are referred to as the primary and the residual
              # streams of the split. The original `ReadStream` can still be read from in
              # the same manner as before. Both of the returned `ReadStream` objects can
              # also be read from, and the rows returned by both child streams will be
              # the same as the rows read from the original stream.
              #
              # Moreover, the two child streams will be allocated back-to-back in the
              # original `ReadStream`. Concretely, it is guaranteed that for streams
              # original, primary, and residual, that original[0-j] = primary[0-j] and
              # original[j-n] = residual[0-m] once the streams have been read to
              # completion.
              rpc :SplitReadStream, ::Google::Cloud::Bigquery::Storage::V1::SplitReadStreamRequest, ::Google::Cloud::Bigquery::Storage::V1::SplitReadStreamResponse
            end

            Stub = Service.rpc_stub_class
          end
          module BigQueryWrite
            # BigQuery Write API.
            #
            # The Write API can be used to write data to BigQuery.
            #
            # For supplementary information about the Write API, see:
            # https://cloud.google.com/bigquery/docs/write-api
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.bigquery.storage.v1.BigQueryWrite'

              # Creates a write stream to the given table.
              # Additionally, every table has a special stream named '_default'
              # to which data can be written. This stream doesn't need to be created using
              # CreateWriteStream. It is a stream that can be used simultaneously by any
              # number of clients. Data written to this stream is considered committed as
              # soon as an acknowledgement is received.
              rpc :CreateWriteStream, ::Google::Cloud::Bigquery::Storage::V1::CreateWriteStreamRequest, ::Google::Cloud::Bigquery::Storage::V1::WriteStream
              # Appends data to the given stream.
              #
              # If `offset` is specified, the `offset` is checked against the end of
              # stream. The server returns `OUT_OF_RANGE` in `AppendRowsResponse` if an
              # attempt is made to append to an offset beyond the current end of the stream
              # or `ALREADY_EXISTS` if user provides an `offset` that has already been
              # written to. User can retry with adjusted offset within the same RPC
              # connection. If `offset` is not specified, append happens at the end of the
              # stream.
              #
              # The response contains an optional offset at which the append
              # happened.  No offset information will be returned for appends to a
              # default stream.
              #
              # Responses are received in the same order in which requests are sent.
              # There will be one response for each successful inserted request.  Responses
              # may optionally embed error information if the originating AppendRequest was
              # not successfully processed.
              #
              # The specifics of when successfully appended data is made visible to the
              # table are governed by the type of stream:
              #
              # * For COMMITTED streams (which includes the default stream), data is
              # visible immediately upon successful append.
              #
              # * For BUFFERED streams, data is made visible via a subsequent `FlushRows`
              # rpc which advances a cursor to a newer offset in the stream.
              #
              # * For PENDING streams, data is not made visible until the stream itself is
              # finalized (via the `FinalizeWriteStream` rpc), and the stream is explicitly
              # committed via the `BatchCommitWriteStreams` rpc.
              rpc :AppendRows, stream(::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest), stream(::Google::Cloud::Bigquery::Storage::V1::AppendRowsResponse)
              # Gets information about a write stream.
              rpc :GetWriteStream, ::Google::Cloud::Bigquery::Storage::V1::GetWriteStreamRequest, ::Google::Cloud::Bigquery::Storage::V1::WriteStream
              # Finalize a write stream so that no new data can be appended to the
              # stream. Finalize is not supported on the '_default' stream.
              rpc :FinalizeWriteStream, ::Google::Cloud::Bigquery::Storage::V1::FinalizeWriteStreamRequest, ::Google::Cloud::Bigquery::Storage::V1::FinalizeWriteStreamResponse
              # Atomically commits a group of `PENDING` streams that belong to the same
              # `parent` table.
              #
              # Streams must be finalized before commit and cannot be committed multiple
              # times. Once a stream is committed, data in the stream becomes available
              # for read operations.
              rpc :BatchCommitWriteStreams, ::Google::Cloud::Bigquery::Storage::V1::BatchCommitWriteStreamsRequest, ::Google::Cloud::Bigquery::Storage::V1::BatchCommitWriteStreamsResponse
              # Flushes rows to a BUFFERED stream.
              #
              # If users are appending rows to BUFFERED stream, flush operation is
              # required in order for the rows to become available for reading. A
              # Flush operation flushes up to any previously flushed offset in a BUFFERED
              # stream, to the offset specified in the request.
              #
              # Flush is not supported on the _default stream, since it is not BUFFERED.
              rpc :FlushRows, ::Google::Cloud::Bigquery::Storage::V1::FlushRowsRequest, ::Google::Cloud::Bigquery::Storage::V1::FlushRowsResponse
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
