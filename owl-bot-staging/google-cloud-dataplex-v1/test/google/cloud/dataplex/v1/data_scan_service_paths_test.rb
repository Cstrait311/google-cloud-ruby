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

require "google/cloud/dataplex/v1/data_scan_service"

class ::Google::Cloud::Dataplex::V1::DataScanService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_data_scan_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_scan_path project: "value0", location: "value1", dataScan: "value2"
      assert_equal "projects/value0/locations/value1/dataScans/value2", path
    end
  end

  def test_data_scan_job_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_scan_job_path project: "value0", location: "value1", dataScan: "value2", job: "value3"
      assert_equal "projects/value0/locations/value1/dataScans/value2/jobs/value3", path
    end
  end

  def test_entity_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.entity_path project: "value0", location: "value1", lake: "value2", zone: "value3", entity: "value4"
      assert_equal "projects/value0/locations/value1/lakes/value2/zones/value3/entities/value4", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end
end
