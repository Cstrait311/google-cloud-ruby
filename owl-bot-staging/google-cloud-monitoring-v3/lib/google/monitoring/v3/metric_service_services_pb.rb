# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/monitoring/v3/metric_service.proto for package 'Google.Cloud.Monitoring.V3'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/monitoring/v3/metric_service_pb'

module Google
  module Cloud
    module Monitoring
      module V3
        module MetricService
          # Manages metric descriptors, monitored resource descriptors, and
          # time series data.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.monitoring.v3.MetricService'

            # Lists monitored resource descriptors that match a filter.
            rpc :ListMonitoredResourceDescriptors, ::Google::Cloud::Monitoring::V3::ListMonitoredResourceDescriptorsRequest, ::Google::Cloud::Monitoring::V3::ListMonitoredResourceDescriptorsResponse
            # Gets a single monitored resource descriptor.
            rpc :GetMonitoredResourceDescriptor, ::Google::Cloud::Monitoring::V3::GetMonitoredResourceDescriptorRequest, ::Google::Api::MonitoredResourceDescriptor
            # Lists metric descriptors that match a filter.
            rpc :ListMetricDescriptors, ::Google::Cloud::Monitoring::V3::ListMetricDescriptorsRequest, ::Google::Cloud::Monitoring::V3::ListMetricDescriptorsResponse
            # Gets a single metric descriptor.
            rpc :GetMetricDescriptor, ::Google::Cloud::Monitoring::V3::GetMetricDescriptorRequest, ::Google::Api::MetricDescriptor
            # Creates a new metric descriptor.
            # The creation is executed asynchronously.
            # User-created metric descriptors define
            # [custom metrics](https://cloud.google.com/monitoring/custom-metrics).
            # The metric descriptor is updated if it already exists,
            # except that metric labels are never removed.
            rpc :CreateMetricDescriptor, ::Google::Cloud::Monitoring::V3::CreateMetricDescriptorRequest, ::Google::Api::MetricDescriptor
            # Deletes a metric descriptor. Only user-created
            # [custom metrics](https://cloud.google.com/monitoring/custom-metrics) can be
            # deleted.
            rpc :DeleteMetricDescriptor, ::Google::Cloud::Monitoring::V3::DeleteMetricDescriptorRequest, ::Google::Protobuf::Empty
            # Lists time series that match a filter.
            rpc :ListTimeSeries, ::Google::Cloud::Monitoring::V3::ListTimeSeriesRequest, ::Google::Cloud::Monitoring::V3::ListTimeSeriesResponse
            # Creates or adds data to one or more time series.
            # The response is empty if all time series in the request were written.
            # If any time series could not be written, a corresponding failure message is
            # included in the error response.
            # This method does not support
            # [resource locations constraint of an organization
            # policy](https://cloud.google.com/resource-manager/docs/organization-policy/defining-locations#setting_the_organization_policy).
            rpc :CreateTimeSeries, ::Google::Cloud::Monitoring::V3::CreateTimeSeriesRequest, ::Google::Protobuf::Empty
            # Creates or adds data to one or more service time series. A service time
            # series is a time series for a metric from a Google Cloud service. The
            # response is empty if all time series in the request were written. If any
            # time series could not be written, a corresponding failure message is
            # included in the error response. This endpoint rejects writes to
            # user-defined metrics.
            # This method is only for use by Google Cloud services. Use
            # [projects.timeSeries.create][google.monitoring.v3.MetricService.CreateTimeSeries]
            # instead.
            rpc :CreateServiceTimeSeries, ::Google::Cloud::Monitoring::V3::CreateTimeSeriesRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
