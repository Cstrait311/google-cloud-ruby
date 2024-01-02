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

require "google/cloud/websecurityscanner/v1beta/web_security_scanner_pb"
require "google/cloud/websecurityscanner/v1beta/web_security_scanner_services_pb"
require "google/cloud/web_security_scanner/v1beta/web_security_scanner"

class ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::ClientTest < Minitest::Test
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

  def test_create_scan_config
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    scan_config = {}

    create_scan_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_scan_config, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::CreateScanConfigRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig), request["scan_config"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_scan_config_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_scan_config({ parent: parent, scan_config: scan_config }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_scan_config parent: parent, scan_config: scan_config do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_scan_config ::Google::Cloud::WebSecurityScanner::V1beta::CreateScanConfigRequest.new(parent: parent, scan_config: scan_config) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_scan_config({ parent: parent, scan_config: scan_config }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_scan_config(::Google::Cloud::WebSecurityScanner::V1beta::CreateScanConfigRequest.new(parent: parent, scan_config: scan_config), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_scan_config_client_stub.call_rpc_count
    end
  end

  def test_delete_scan_config
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_scan_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_scan_config, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::DeleteScanConfigRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_scan_config_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_scan_config({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_scan_config name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_scan_config ::Google::Cloud::WebSecurityScanner::V1beta::DeleteScanConfigRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_scan_config({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_scan_config(::Google::Cloud::WebSecurityScanner::V1beta::DeleteScanConfigRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_scan_config_client_stub.call_rpc_count
    end
  end

  def test_get_scan_config
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_scan_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_scan_config, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::GetScanConfigRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_scan_config_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_scan_config({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_scan_config name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_scan_config ::Google::Cloud::WebSecurityScanner::V1beta::GetScanConfigRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_scan_config({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_scan_config(::Google::Cloud::WebSecurityScanner::V1beta::GetScanConfigRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_scan_config_client_stub.call_rpc_count
    end
  end

  def test_list_scan_configs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ListScanConfigsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_token = "hello world"
    page_size = 42

    list_scan_configs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_scan_configs, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::ListScanConfigsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["page_size"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_scan_configs_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_scan_configs({ parent: parent, page_token: page_token, page_size: page_size }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_scan_configs parent: parent, page_token: page_token, page_size: page_size do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_scan_configs ::Google::Cloud::WebSecurityScanner::V1beta::ListScanConfigsRequest.new(parent: parent, page_token: page_token, page_size: page_size) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_scan_configs({ parent: parent, page_token: page_token, page_size: page_size }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_scan_configs(::Google::Cloud::WebSecurityScanner::V1beta::ListScanConfigsRequest.new(parent: parent, page_token: page_token, page_size: page_size), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_scan_configs_client_stub.call_rpc_count
    end
  end

  def test_update_scan_config
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    scan_config = {}
    update_mask = {}

    update_scan_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_scan_config, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::UpdateScanConfigRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig), request["scan_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_scan_config_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_scan_config({ scan_config: scan_config, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_scan_config scan_config: scan_config, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_scan_config ::Google::Cloud::WebSecurityScanner::V1beta::UpdateScanConfigRequest.new(scan_config: scan_config, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_scan_config({ scan_config: scan_config, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_scan_config(::Google::Cloud::WebSecurityScanner::V1beta::UpdateScanConfigRequest.new(scan_config: scan_config, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_scan_config_client_stub.call_rpc_count
    end
  end

  def test_start_scan_run
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ScanRun.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    start_scan_run_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :start_scan_run, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::StartScanRunRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, start_scan_run_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.start_scan_run({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.start_scan_run name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.start_scan_run ::Google::Cloud::WebSecurityScanner::V1beta::StartScanRunRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.start_scan_run({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.start_scan_run(::Google::Cloud::WebSecurityScanner::V1beta::StartScanRunRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, start_scan_run_client_stub.call_rpc_count
    end
  end

  def test_get_scan_run
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ScanRun.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_scan_run_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_scan_run, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::GetScanRunRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_scan_run_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_scan_run({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_scan_run name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_scan_run ::Google::Cloud::WebSecurityScanner::V1beta::GetScanRunRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_scan_run({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_scan_run(::Google::Cloud::WebSecurityScanner::V1beta::GetScanRunRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_scan_run_client_stub.call_rpc_count
    end
  end

  def test_list_scan_runs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ListScanRunsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_token = "hello world"
    page_size = 42

    list_scan_runs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_scan_runs, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::ListScanRunsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["page_size"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_scan_runs_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_scan_runs({ parent: parent, page_token: page_token, page_size: page_size }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_scan_runs parent: parent, page_token: page_token, page_size: page_size do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_scan_runs ::Google::Cloud::WebSecurityScanner::V1beta::ListScanRunsRequest.new(parent: parent, page_token: page_token, page_size: page_size) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_scan_runs({ parent: parent, page_token: page_token, page_size: page_size }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_scan_runs(::Google::Cloud::WebSecurityScanner::V1beta::ListScanRunsRequest.new(parent: parent, page_token: page_token, page_size: page_size), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_scan_runs_client_stub.call_rpc_count
    end
  end

  def test_stop_scan_run
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ScanRun.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    stop_scan_run_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :stop_scan_run, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::StopScanRunRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, stop_scan_run_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.stop_scan_run({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.stop_scan_run name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.stop_scan_run ::Google::Cloud::WebSecurityScanner::V1beta::StopScanRunRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.stop_scan_run({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.stop_scan_run(::Google::Cloud::WebSecurityScanner::V1beta::StopScanRunRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, stop_scan_run_client_stub.call_rpc_count
    end
  end

  def test_list_crawled_urls
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ListCrawledUrlsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_token = "hello world"
    page_size = 42

    list_crawled_urls_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_crawled_urls, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::ListCrawledUrlsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["page_size"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_crawled_urls_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_crawled_urls({ parent: parent, page_token: page_token, page_size: page_size }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_crawled_urls parent: parent, page_token: page_token, page_size: page_size do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_crawled_urls ::Google::Cloud::WebSecurityScanner::V1beta::ListCrawledUrlsRequest.new(parent: parent, page_token: page_token, page_size: page_size) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_crawled_urls({ parent: parent, page_token: page_token, page_size: page_size }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_crawled_urls(::Google::Cloud::WebSecurityScanner::V1beta::ListCrawledUrlsRequest.new(parent: parent, page_token: page_token, page_size: page_size), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_crawled_urls_client_stub.call_rpc_count
    end
  end

  def test_get_finding
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::Finding.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_finding_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_finding, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::GetFindingRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_finding_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_finding({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_finding name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_finding ::Google::Cloud::WebSecurityScanner::V1beta::GetFindingRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_finding({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_finding(::Google::Cloud::WebSecurityScanner::V1beta::GetFindingRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_finding_client_stub.call_rpc_count
    end
  end

  def test_list_findings
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ListFindingsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_token = "hello world"
    page_size = 42

    list_findings_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_findings, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::ListFindingsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["page_size"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_findings_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_findings({ parent: parent, filter: filter, page_token: page_token, page_size: page_size }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_findings parent: parent, filter: filter, page_token: page_token, page_size: page_size do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_findings ::Google::Cloud::WebSecurityScanner::V1beta::ListFindingsRequest.new(parent: parent, filter: filter, page_token: page_token, page_size: page_size) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_findings({ parent: parent, filter: filter, page_token: page_token, page_size: page_size }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_findings(::Google::Cloud::WebSecurityScanner::V1beta::ListFindingsRequest.new(parent: parent, filter: filter, page_token: page_token, page_size: page_size), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_findings_client_stub.call_rpc_count
    end
  end

  def test_list_finding_type_stats
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::WebSecurityScanner::V1beta::ListFindingTypeStatsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    list_finding_type_stats_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_finding_type_stats, name
      assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::ListFindingTypeStatsRequest, request
      assert_equal "hello world", request["parent"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_finding_type_stats_client_stub do
      # Create client
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_finding_type_stats({ parent: parent }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_finding_type_stats parent: parent do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_finding_type_stats ::Google::Cloud::WebSecurityScanner::V1beta::ListFindingTypeStatsRequest.new(parent: parent) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_finding_type_stats({ parent: parent }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_finding_type_stats(::Google::Cloud::WebSecurityScanner::V1beta::ListFindingTypeStatsRequest.new(parent: parent), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_finding_type_stats_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Client::Configuration, config
  end
end
