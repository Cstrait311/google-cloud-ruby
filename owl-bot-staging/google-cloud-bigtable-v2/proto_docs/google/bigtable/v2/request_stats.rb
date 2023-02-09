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


module Google
  module Cloud
    module Bigtable
      module V2
        # ReadIterationStats captures information about the iteration of rows or cells
        # over the course of a read, e.g. how many results were scanned in a read
        # operation versus the results returned.
        # @!attribute [rw] rows_seen_count
        #   @return [::Integer]
        #     The rows seen (scanned) as part of the request. This includes the count of
        #     rows returned, as captured below.
        # @!attribute [rw] rows_returned_count
        #   @return [::Integer]
        #     The rows returned as part of the request.
        # @!attribute [rw] cells_seen_count
        #   @return [::Integer]
        #     The cells seen (scanned) as part of the request. This includes the count of
        #     cells returned, as captured below.
        # @!attribute [rw] cells_returned_count
        #   @return [::Integer]
        #     The cells returned as part of the request.
        class ReadIterationStats
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # RequestLatencyStats provides a measurement of the latency of the request as
        # it interacts with different systems over its lifetime, e.g. how long the
        # request took to execute within a frontend server.
        # @!attribute [rw] frontend_server_latency
        #   @return [::Google::Protobuf::Duration]
        #     The latency measured by the frontend server handling this request, from
        #     when the request was received, to when this value is sent back in the
        #     response. For more context on the component that is measuring this latency,
        #     see: https://cloud.google.com/bigtable/docs/overview
        #
        #     Note: This value may be slightly shorter than the value reported into
        #     aggregate latency metrics in Monitoring for this request
        #     (https://cloud.google.com/bigtable/docs/monitoring-instance) as this value
        #     needs to be sent in the response before the latency measurement including
        #     that transmission is finalized.
        #
        #     Note: This value includes the end-to-end latency of contacting nodes in
        #     the targeted cluster, e.g. measuring from when the first byte arrives at
        #     the frontend server, to when this value is sent back as the last value in
        #     the response, including any latency incurred by contacting nodes, waiting
        #     for results from nodes, and finally sending results from nodes back to the
        #     caller.
        class RequestLatencyStats
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # FullReadStatsView captures all known information about a read.
        # @!attribute [rw] read_iteration_stats
        #   @return [::Google::Cloud::Bigtable::V2::ReadIterationStats]
        #     Iteration stats describe how efficient the read is, e.g. comparing
        #     rows seen vs. rows returned or cells seen vs cells returned can provide an
        #     indication of read efficiency (the higher the ratio of seen to retuned the
        #     better).
        # @!attribute [rw] request_latency_stats
        #   @return [::Google::Cloud::Bigtable::V2::RequestLatencyStats]
        #     Request latency stats describe the time taken to complete a request, from
        #     the server side.
        class FullReadStatsView
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # RequestStats is the container for additional information pertaining to a
        # single request, helpful for evaluating the performance of the sent request.
        # Currently, there are the following supported methods:
        #   * google.bigtable.v2.ReadRows
        # @!attribute [rw] full_read_stats_view
        #   @return [::Google::Cloud::Bigtable::V2::FullReadStatsView]
        #     Available with the ReadRowsRequest.RequestStatsView.REQUEST_STATS_FULL
        #     view, see package google.bigtable.v2.
        class RequestStats
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

