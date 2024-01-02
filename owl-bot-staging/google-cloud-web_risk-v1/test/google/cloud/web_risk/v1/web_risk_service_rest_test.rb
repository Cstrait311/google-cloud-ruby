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
require "gapic/rest"
require "google/cloud/webrisk/v1/webrisk_pb"
require "google/cloud/web_risk/v1/web_risk_service/rest"


class ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_compute_threat_list_diff
    # Create test objects.
    client_result = ::Google::Cloud::WebRisk::V1::ComputeThreatListDiffResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    threat_type = :THREAT_TYPE_UNSPECIFIED
    version_token = "hello world"
    constraints = {}

    compute_threat_list_diff_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::ServiceStub.stub :transcode_compute_threat_list_diff_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, compute_threat_list_diff_client_stub do
        # Create client
        client = ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.compute_threat_list_diff({ threat_type: threat_type, version_token: version_token, constraints: constraints }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.compute_threat_list_diff threat_type: threat_type, version_token: version_token, constraints: constraints do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.compute_threat_list_diff ::Google::Cloud::WebRisk::V1::ComputeThreatListDiffRequest.new(threat_type: threat_type, version_token: version_token, constraints: constraints) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.compute_threat_list_diff({ threat_type: threat_type, version_token: version_token, constraints: constraints }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.compute_threat_list_diff(::Google::Cloud::WebRisk::V1::ComputeThreatListDiffRequest.new(threat_type: threat_type, version_token: version_token, constraints: constraints), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, compute_threat_list_diff_client_stub.call_count
      end
    end
  end

  def test_search_uris
    # Create test objects.
    client_result = ::Google::Cloud::WebRisk::V1::SearchUrisResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    uri = "hello world"
    threat_types = [:THREAT_TYPE_UNSPECIFIED]

    search_uris_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::ServiceStub.stub :transcode_search_uris_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_uris_client_stub do
        # Create client
        client = ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_uris({ uri: uri, threat_types: threat_types }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_uris uri: uri, threat_types: threat_types do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_uris ::Google::Cloud::WebRisk::V1::SearchUrisRequest.new(uri: uri, threat_types: threat_types) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_uris({ uri: uri, threat_types: threat_types }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_uris(::Google::Cloud::WebRisk::V1::SearchUrisRequest.new(uri: uri, threat_types: threat_types), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_uris_client_stub.call_count
      end
    end
  end

  def test_search_hashes
    # Create test objects.
    client_result = ::Google::Cloud::WebRisk::V1::SearchHashesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    hash_prefix = "hello world"
    threat_types = [:THREAT_TYPE_UNSPECIFIED]

    search_hashes_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::ServiceStub.stub :transcode_search_hashes_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_hashes_client_stub do
        # Create client
        client = ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_hashes({ hash_prefix: hash_prefix, threat_types: threat_types }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_hashes hash_prefix: hash_prefix, threat_types: threat_types do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_hashes ::Google::Cloud::WebRisk::V1::SearchHashesRequest.new(hash_prefix: hash_prefix, threat_types: threat_types) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_hashes({ hash_prefix: hash_prefix, threat_types: threat_types }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_hashes(::Google::Cloud::WebRisk::V1::SearchHashesRequest.new(hash_prefix: hash_prefix, threat_types: threat_types), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_hashes_client_stub.call_count
      end
    end
  end

  def test_create_submission
    # Create test objects.
    client_result = ::Google::Cloud::WebRisk::V1::Submission.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    submission = {}

    create_submission_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::ServiceStub.stub :transcode_create_submission_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_submission_client_stub do
        # Create client
        client = ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_submission({ parent: parent, submission: submission }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_submission parent: parent, submission: submission do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_submission ::Google::Cloud::WebRisk::V1::CreateSubmissionRequest.new(parent: parent, submission: submission) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_submission({ parent: parent, submission: submission }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_submission(::Google::Cloud::WebRisk::V1::CreateSubmissionRequest.new(parent: parent, submission: submission), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_submission_client_stub.call_count
      end
    end
  end

  def test_submit_uri
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    submission = {}
    threat_info = {}
    threat_discovery = {}

    submit_uri_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::ServiceStub.stub :transcode_submit_uri_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, submit_uri_client_stub do
        # Create client
        client = ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.submit_uri({ parent: parent, submission: submission, threat_info: threat_info, threat_discovery: threat_discovery }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.submit_uri parent: parent, submission: submission, threat_info: threat_info, threat_discovery: threat_discovery do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.submit_uri ::Google::Cloud::WebRisk::V1::SubmitUriRequest.new(parent: parent, submission: submission, threat_info: threat_info, threat_discovery: threat_discovery) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.submit_uri({ parent: parent, submission: submission, threat_info: threat_info, threat_discovery: threat_discovery }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.submit_uri(::Google::Cloud::WebRisk::V1::SubmitUriRequest.new(parent: parent, submission: submission, threat_info: threat_info, threat_discovery: threat_discovery), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, submit_uri_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::WebRisk::V1::WebRiskService::Rest::Client::Configuration, config
  end
end
