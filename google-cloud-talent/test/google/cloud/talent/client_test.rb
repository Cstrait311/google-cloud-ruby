# frozen_string_literal: true

# Copyright 2020 Google LLC
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
require "google/cloud/talent"
require "gapic/common"
require "gapic/grpc"
require "gapic/rest"

class Google::Cloud::Talent::ClientConstructionMinitest < Minitest::Test
  def test_company_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Talent.company_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Talent::V4::CompanyService::Client, client
    end
  end

  def test_company_service_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Talent.company_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Talent::V4::CompanyService::Rest::Client, client
    end
  end

  def test_completion_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Talent.completion transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Talent::V4::Completion::Client, client
    end
  end

  def test_completion_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Talent.completion transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Talent::V4::Completion::Rest::Client, client
    end
  end

  def test_event_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Talent.event_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Talent::V4::EventService::Client, client
    end
  end

  def test_event_service_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Talent.event_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Talent::V4::EventService::Rest::Client, client
    end
  end

  def test_job_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Talent.job_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Talent::V4::JobService::Client, client
    end
  end

  def test_job_service_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Talent.job_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Talent::V4::JobService::Rest::Client, client
    end
  end

  def test_tenant_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Talent.tenant_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Talent::V4::TenantService::Client, client
    end
  end

  def test_tenant_service_rest
    Gapic::Rest::ClientStub.stub :new, :stub do
      client = Google::Cloud::Talent.tenant_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Talent::V4::TenantService::Rest::Client, client
    end
  end
end
