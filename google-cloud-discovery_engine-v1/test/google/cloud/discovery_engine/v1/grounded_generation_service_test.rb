# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "google/cloud/discoveryengine/v1/grounded_generation_service_pb"
require "google/cloud/discoveryengine/v1/grounded_generation_service_services_pb"
require "google/cloud/discovery_engine/v1/grounded_generation_service"

class ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::ClientTest < Minitest::Test
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

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_check_grounding
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1::CheckGroundingResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    grounding_config = "hello world"
    answer_candidate = "hello world"
    facts = [{}]
    grounding_spec = {}
    user_labels = {}

    check_grounding_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :check_grounding, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::CheckGroundingRequest, request
      assert_equal "hello world", request["grounding_config"]
      assert_equal "hello world", request["answer_candidate"]
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::GroundingFact, request["facts"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1::CheckGroundingSpec), request["grounding_spec"]
      assert_equal({}, request["user_labels"].to_h)
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, check_grounding_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.check_grounding({ grounding_config: grounding_config, answer_candidate: answer_candidate, facts: facts, grounding_spec: grounding_spec, user_labels: user_labels }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.check_grounding grounding_config: grounding_config, answer_candidate: answer_candidate, facts: facts, grounding_spec: grounding_spec, user_labels: user_labels do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.check_grounding ::Google::Cloud::DiscoveryEngine::V1::CheckGroundingRequest.new(grounding_config: grounding_config, answer_candidate: answer_candidate, facts: facts, grounding_spec: grounding_spec, user_labels: user_labels) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.check_grounding({ grounding_config: grounding_config, answer_candidate: answer_candidate, facts: facts, grounding_spec: grounding_spec, user_labels: user_labels }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.check_grounding(::Google::Cloud::DiscoveryEngine::V1::CheckGroundingRequest.new(grounding_config: grounding_config, answer_candidate: answer_candidate, facts: facts, grounding_spec: grounding_spec, user_labels: user_labels), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, check_grounding_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Client::Configuration, config
  end
end
