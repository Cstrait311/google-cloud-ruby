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
    module Bigquery
      module Storage
        module V1
          # Arrow schema as specified in
          # https://arrow.apache.org/docs/python/api/datatypes.html
          # and serialized to bytes using IPC:
          # https://arrow.apache.org/docs/format/Columnar.html#serialization-and-interprocess-communication-ipc
          #
          # See code samples on how this message can be deserialized.
          # @!attribute [rw] serialized_schema
          #   @return [::String]
          #     IPC serialized Arrow schema.
          class ArrowSchema
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Arrow RecordBatch.
          # @!attribute [rw] serialized_record_batch
          #   @return [::String]
          #     IPC-serialized Arrow RecordBatch.
          # @!attribute [rw] row_count
          #   @return [::Integer]
          #     [Deprecated] The count of rows in `serialized_record_batch`.
          #     Please use the format-independent ReadRowsResponse.row_count instead.
          class ArrowRecordBatch
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Contains options specific to Arrow Serialization.
          # @!attribute [rw] buffer_compression
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ArrowSerializationOptions::CompressionCodec]
          #     The compression codec to use for Arrow buffers in serialized record
          #     batches.
          class ArrowSerializationOptions
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Compression codec's supported by Arrow.
            module CompressionCodec

              # If unspecified no compression will be used.
              COMPRESSION_UNSPECIFIED = 0

              # LZ4 Frame (https://github.com/lz4/lz4/blob/dev/doc/lz4_Frame_format.md)
              LZ4_FRAME = 1

              # Zstandard compression.
              ZSTD = 2
            end
          end
        end
      end
    end
  end
end

