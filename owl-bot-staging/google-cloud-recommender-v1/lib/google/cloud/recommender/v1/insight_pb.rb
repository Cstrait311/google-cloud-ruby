# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/recommender/v1/insight.proto

require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/recommender/v1/insight.proto", :syntax => :proto3) do
    add_message "google.cloud.recommender.v1.Insight" do
      optional :name, :string, 1
      optional :description, :string, 2
      repeated :target_resources, :string, 9
      optional :insight_subtype, :string, 10
      optional :content, :message, 3, "google.protobuf.Struct"
      optional :last_refresh_time, :message, 4, "google.protobuf.Timestamp"
      optional :observation_period, :message, 5, "google.protobuf.Duration"
      optional :state_info, :message, 6, "google.cloud.recommender.v1.InsightStateInfo"
      optional :category, :enum, 7, "google.cloud.recommender.v1.Insight.Category"
      optional :etag, :string, 11
      repeated :associated_recommendations, :message, 8, "google.cloud.recommender.v1.Insight.RecommendationReference"
    end
    add_message "google.cloud.recommender.v1.Insight.RecommendationReference" do
      optional :recommendation, :string, 1
    end
    add_enum "google.cloud.recommender.v1.Insight.Category" do
      value :CATEGORY_UNSPECIFIED, 0
      value :COST, 1
      value :SECURITY, 2
      value :PERFORMANCE, 3
      value :MANAGEABILITY, 4
    end
    add_message "google.cloud.recommender.v1.InsightStateInfo" do
      optional :state, :enum, 1, "google.cloud.recommender.v1.InsightStateInfo.State"
      map :state_metadata, :string, :string, 2
    end
    add_enum "google.cloud.recommender.v1.InsightStateInfo.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :ACCEPTED, 2
      value :DISMISSED, 3
    end
  end
end

module Google
  module Cloud
    module Recommender
      module V1
        Insight = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.Insight").msgclass
        Insight::RecommendationReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.Insight.RecommendationReference").msgclass
        Insight::Category = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.Insight.Category").enummodule
        InsightStateInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.InsightStateInfo").msgclass
        InsightStateInfo::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.InsightStateInfo.State").enummodule
      end
    end
  end
end
