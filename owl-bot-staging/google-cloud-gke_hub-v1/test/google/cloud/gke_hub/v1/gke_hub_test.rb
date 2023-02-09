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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/gkehub/v1/service_pb"
require "google/cloud/gkehub/v1/service_services_pb"
require "google/cloud/gke_hub/v1/gke_hub"

class ::Google::Cloud::GkeHub::V1::GkeHub::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_list_memberships
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeHub::V1::ListMembershipsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_memberships_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_memberships, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::ListMembershipsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_memberships_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_memberships({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_memberships parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_memberships ::Google::Cloud::GkeHub::V1::ListMembershipsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_memberships({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_memberships(::Google::Cloud::GkeHub::V1::ListMembershipsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_memberships_client_stub.call_rpc_count
    end
  end

  def test_list_features
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeHub::V1::ListFeaturesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_features_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_features, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::ListFeaturesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_features_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_features({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_features parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_features ::Google::Cloud::GkeHub::V1::ListFeaturesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_features({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_features(::Google::Cloud::GkeHub::V1::ListFeaturesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_features_client_stub.call_rpc_count
    end
  end

  def test_get_membership
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeHub::V1::Membership.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_membership_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_membership, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::GetMembershipRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_membership_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_membership({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_membership name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_membership ::Google::Cloud::GkeHub::V1::GetMembershipRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_membership({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_membership(::Google::Cloud::GkeHub::V1::GetMembershipRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_membership_client_stub.call_rpc_count
    end
  end

  def test_get_feature
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeHub::V1::Feature.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_feature_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_feature, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::GetFeatureRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_feature_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_feature({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_feature name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_feature ::Google::Cloud::GkeHub::V1::GetFeatureRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_feature({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_feature(::Google::Cloud::GkeHub::V1::GetFeatureRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_feature_client_stub.call_rpc_count
    end
  end

  def test_create_membership
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    membership_id = "hello world"
    resource = {}
    request_id = "hello world"

    create_membership_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_membership, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::CreateMembershipRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["membership_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::GkeHub::V1::Membership), request["resource"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_membership_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_membership({ parent: parent, membership_id: membership_id, resource: resource, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_membership parent: parent, membership_id: membership_id, resource: resource, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_membership ::Google::Cloud::GkeHub::V1::CreateMembershipRequest.new(parent: parent, membership_id: membership_id, resource: resource, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_membership({ parent: parent, membership_id: membership_id, resource: resource, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_membership(::Google::Cloud::GkeHub::V1::CreateMembershipRequest.new(parent: parent, membership_id: membership_id, resource: resource, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_membership_client_stub.call_rpc_count
    end
  end

  def test_create_feature
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    feature_id = "hello world"
    resource = {}
    request_id = "hello world"

    create_feature_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_feature, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::CreateFeatureRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["feature_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::GkeHub::V1::Feature), request["resource"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_feature_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_feature({ parent: parent, feature_id: feature_id, resource: resource, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_feature parent: parent, feature_id: feature_id, resource: resource, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_feature ::Google::Cloud::GkeHub::V1::CreateFeatureRequest.new(parent: parent, feature_id: feature_id, resource: resource, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_feature({ parent: parent, feature_id: feature_id, resource: resource, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_feature(::Google::Cloud::GkeHub::V1::CreateFeatureRequest.new(parent: parent, feature_id: feature_id, resource: resource, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_feature_client_stub.call_rpc_count
    end
  end

  def test_delete_membership
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_membership_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_membership, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::DeleteMembershipRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_membership_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_membership({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_membership name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_membership ::Google::Cloud::GkeHub::V1::DeleteMembershipRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_membership({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_membership(::Google::Cloud::GkeHub::V1::DeleteMembershipRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_membership_client_stub.call_rpc_count
    end
  end

  def test_delete_feature
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true
    request_id = "hello world"

    delete_feature_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_feature, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::DeleteFeatureRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["force"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_feature_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_feature({ name: name, force: force, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_feature name: name, force: force, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_feature ::Google::Cloud::GkeHub::V1::DeleteFeatureRequest.new(name: name, force: force, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_feature({ name: name, force: force, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_feature(::Google::Cloud::GkeHub::V1::DeleteFeatureRequest.new(name: name, force: force, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_feature_client_stub.call_rpc_count
    end
  end

  def test_update_membership
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    update_mask = {}
    resource = {}
    request_id = "hello world"

    update_membership_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_membership, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::UpdateMembershipRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::GkeHub::V1::Membership), request["resource"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_membership_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_membership({ name: name, update_mask: update_mask, resource: resource, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_membership name: name, update_mask: update_mask, resource: resource, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_membership ::Google::Cloud::GkeHub::V1::UpdateMembershipRequest.new(name: name, update_mask: update_mask, resource: resource, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_membership({ name: name, update_mask: update_mask, resource: resource, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_membership(::Google::Cloud::GkeHub::V1::UpdateMembershipRequest.new(name: name, update_mask: update_mask, resource: resource, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_membership_client_stub.call_rpc_count
    end
  end

  def test_update_feature
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    update_mask = {}
    resource = {}
    request_id = "hello world"

    update_feature_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_feature, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::UpdateFeatureRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::GkeHub::V1::Feature), request["resource"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_feature_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_feature({ name: name, update_mask: update_mask, resource: resource, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_feature name: name, update_mask: update_mask, resource: resource, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_feature ::Google::Cloud::GkeHub::V1::UpdateFeatureRequest.new(name: name, update_mask: update_mask, resource: resource, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_feature({ name: name, update_mask: update_mask, resource: resource, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_feature(::Google::Cloud::GkeHub::V1::UpdateFeatureRequest.new(name: name, update_mask: update_mask, resource: resource, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_feature_client_stub.call_rpc_count
    end
  end

  def test_generate_connect_manifest
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GkeHub::V1::GenerateConnectManifestResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    namespace = "hello world"
    proxy = "hello world"
    version = "hello world"
    is_upgrade = true
    registry = "hello world"
    image_pull_secret_content = "hello world"

    generate_connect_manifest_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :generate_connect_manifest, name
      assert_kind_of ::Google::Cloud::GkeHub::V1::GenerateConnectManifestRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["namespace"]
      assert_equal "hello world", request["proxy"]
      assert_equal "hello world", request["version"]
      assert_equal true, request["is_upgrade"]
      assert_equal "hello world", request["registry"]
      assert_equal "hello world", request["image_pull_secret_content"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, generate_connect_manifest_client_stub do
      # Create client
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.generate_connect_manifest({ name: name, namespace: namespace, proxy: proxy, version: version, is_upgrade: is_upgrade, registry: registry, image_pull_secret_content: image_pull_secret_content }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.generate_connect_manifest name: name, namespace: namespace, proxy: proxy, version: version, is_upgrade: is_upgrade, registry: registry, image_pull_secret_content: image_pull_secret_content do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.generate_connect_manifest ::Google::Cloud::GkeHub::V1::GenerateConnectManifestRequest.new(name: name, namespace: namespace, proxy: proxy, version: version, is_upgrade: is_upgrade, registry: registry, image_pull_secret_content: image_pull_secret_content) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.generate_connect_manifest({ name: name, namespace: namespace, proxy: proxy, version: version, is_upgrade: is_upgrade, registry: registry, image_pull_secret_content: image_pull_secret_content }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.generate_connect_manifest(::Google::Cloud::GkeHub::V1::GenerateConnectManifestRequest.new(name: name, namespace: namespace, proxy: proxy, version: version, is_upgrade: is_upgrade, registry: registry, image_pull_secret_content: image_pull_secret_content), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, generate_connect_manifest_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::GkeHub::V1::GkeHub::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::GkeHub::V1::GkeHub::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::GkeHub::V1::GkeHub::Operations, client.operations_client
  end
end
