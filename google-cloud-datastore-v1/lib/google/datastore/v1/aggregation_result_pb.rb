# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/datastore/v1/aggregation_result.proto

require 'google/protobuf'

require 'google/datastore/v1/entity_pb'
require 'google/datastore/v1/query_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/datastore/v1/aggregation_result.proto", :syntax => :proto3) do
    add_message "google.datastore.v1.AggregationResult" do
      map :aggregate_properties, :string, :message, 2, "google.datastore.v1.Value"
    end
    add_message "google.datastore.v1.AggregationResultBatch" do
      repeated :aggregation_results, :message, 1, "google.datastore.v1.AggregationResult"
      optional :more_results, :enum, 2, "google.datastore.v1.QueryResultBatch.MoreResultsType"
      optional :read_time, :message, 3, "google.protobuf.Timestamp"
    end
  end
end

module Google
  module Cloud
    module Datastore
      module V1
        AggregationResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.AggregationResult").msgclass
        AggregationResultBatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.AggregationResultBatch").msgclass
      end
    end
  end
end
