# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/v1/result_set.proto

require 'google/protobuf'

require 'google/protobuf/struct_pb'
require 'google/spanner/v1/query_plan_pb'
require 'google/spanner/v1/transaction_pb'
require 'google/spanner/v1/type_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/spanner/v1/result_set.proto", :syntax => :proto3) do
    add_message "google.spanner.v1.ResultSet" do
      optional :metadata, :message, 1, "google.spanner.v1.ResultSetMetadata"
      repeated :rows, :message, 2, "google.protobuf.ListValue"
      optional :stats, :message, 3, "google.spanner.v1.ResultSetStats"
    end
    add_message "google.spanner.v1.PartialResultSet" do
      optional :metadata, :message, 1, "google.spanner.v1.ResultSetMetadata"
      repeated :values, :message, 2, "google.protobuf.Value"
      optional :chunked_value, :bool, 3
      optional :resume_token, :bytes, 4
      optional :stats, :message, 5, "google.spanner.v1.ResultSetStats"
    end
    add_message "google.spanner.v1.ResultSetMetadata" do
      optional :row_type, :message, 1, "google.spanner.v1.StructType"
      optional :transaction, :message, 2, "google.spanner.v1.Transaction"
    end
    add_message "google.spanner.v1.ResultSetStats" do
      optional :query_plan, :message, 1, "google.spanner.v1.QueryPlan"
      optional :query_stats, :message, 2, "google.protobuf.Struct"
      oneof :row_count do
        optional :row_count_exact, :int64, 3
        optional :row_count_lower_bound, :int64, 4
      end
    end
  end
end

module Google
  module Cloud
    module Spanner
      module V1
        ResultSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ResultSet").msgclass
        PartialResultSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.PartialResultSet").msgclass
        ResultSetMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ResultSetMetadata").msgclass
        ResultSetStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ResultSetStats").msgclass
      end
    end
  end
end
