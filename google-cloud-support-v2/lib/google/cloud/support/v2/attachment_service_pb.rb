# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/support/v2/attachment_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/support/v2/attachment_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/support/v2/attachment_service.proto", :syntax => :proto3) do
    add_message "google.cloud.support.v2.ListAttachmentsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.support.v2.ListAttachmentsResponse" do
      repeated :attachments, :message, 1, "google.cloud.support.v2.Attachment"
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Cloud
    module Support
      module V2
        ListAttachmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.support.v2.ListAttachmentsRequest").msgclass
        ListAttachmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.support.v2.ListAttachmentsResponse").msgclass
      end
    end
  end
end