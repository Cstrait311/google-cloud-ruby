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


module Google
  module Maps
    module FleetEngine
      module V1
        # CreateTrip request message.
        # @!attribute [rw] header
        #   @return [::Google::Maps::FleetEngine::V1::RequestHeader]
        #     The standard Fleet Engine request header.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Must be in the format `providers/{provider}`.
        #     The provider must be the Project ID (for example, `sample-cloud-project`)
        #     of the Google Cloud Project of which the service account making
        #     this call is a member.
        # @!attribute [rw] trip_id
        #   @return [::String]
        #     Required. Unique Trip ID.
        #     Subject to the following restrictions:
        #
        #     * Must be a valid Unicode string.
        #     * Limited to a maximum length of 64 characters.
        #     * Normalized according to [Unicode Normalization Form C]
        #     (http://www.unicode.org/reports/tr15/).
        #     * May not contain any of the following ASCII characters: '/', ':', '?',
        #     ',', or '#'.
        # @!attribute [rw] trip
        #   @return [::Google::Maps::FleetEngine::V1::Trip]
        #     Required. Trip entity to create.
        #
        #     When creating a Trip, the following fields are required:
        #
        #     * `trip_type`
        #     * `pickup_point`
        #
        #     The following fields are used if you provide them:
        #
        #     * `number_of_passengers`
        #     * `vehicle_id`
        #     * `dropoff_point`
        #     * `intermediate_destinations`
        #     * `vehicle_waypoints`
        #
        #     All other Trip fields are ignored. For example, all trips start with a
        #     `trip_status` of `NEW` even if you pass in a `trip_status` of `CANCELED` in
        #     the creation request.
        #
        #     Only `EXCLUSIVE` trips support `intermediate_destinations`.
        #
        #     When `vehicle_id` is set for a shared trip, you must supply
        #     the list of `Trip.vehicle_waypoints` to specify the order of the remaining
        #     waypoints for the vehicle, otherwise the waypoint order will be
        #     undetermined.
        #
        #     When you specify `Trip.vehicle_waypoints`, the list must contain all
        #     the remaining waypoints of the vehicle's trips, with no extra waypoints.
        #     You must order these waypoints such that for a given trip, the pickup
        #     point is before intermediate destinations, and all intermediate
        #     destinations come before the drop-off point. An `EXCLUSIVE` trip's
        #     waypoints must not interleave with any other trips.
        #
        #     The `trip_id`, `waypoint_type` and `location` fields are used, and all
        #     other TripWaypoint fields in `vehicle_waypoints` are ignored.
        class CreateTripRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GetTrip request message.
        # @!attribute [rw] header
        #   @return [::Google::Maps::FleetEngine::V1::RequestHeader]
        #     The standard Fleet Engine request header.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Must be in the format `providers/{provider}/trips/{trip}`.
        #     The provider must be the Project ID (for example, `sample-cloud-project`)
        #     of the Google Cloud Project of which the service account making
        #     this call is a member.
        # @!attribute [rw] view
        #   @return [::Google::Maps::FleetEngine::V1::TripView]
        #     The subset of Trip fields that should be returned and their interpretation.
        # @!attribute [rw] current_route_segment_version
        #   @return [::Google::Protobuf::Timestamp]
        #     Indicates the minimum timestamp (exclusive) for which `Trip.route` or
        #     `Trip.current_route_segment` data are retrieved. If route data are
        #     unchanged since this timestamp, the route field is not set in the response.
        #     If a minimum is unspecified, the route data are always retrieved.
        # @!attribute [rw] remaining_waypoints_version
        #   @return [::Google::Protobuf::Timestamp]
        #     Indicates the minimum timestamp (exclusive) for which
        #     `Trip.remaining_waypoints` are retrieved. If they are unchanged since this
        #     timestamp, the `remaining_waypoints` are not set in the response. If this
        #     field is unspecified, `remaining_waypoints` is always retrieved.
        # @!attribute [rw] route_format_type
        #   @return [::Google::Maps::FleetEngine::V1::PolylineFormatType]
        #     The returned current route format, `LAT_LNG_LIST_TYPE` (in `Trip.route`),
        #     or `ENCODED_POLYLINE_TYPE` (in `Trip.current_route_segment`). The default
        #     is `LAT_LNG_LIST_TYPE`.
        # @!attribute [rw] current_route_segment_traffic_version
        #   @return [::Google::Protobuf::Timestamp]
        #     Indicates the minimum timestamp (exclusive) for which
        #     `Trip.current_route_segment_traffic` is retrieved. If traffic data are
        #     unchanged since this timestamp, the `current_route_segment_traffic` field
        #     is not set in the response. If a minimum is unspecified, the traffic data
        #     are always retrieved. Note that traffic is only available for On-Demand
        #     Rides and Deliveries Solution customers.
        # @!attribute [rw] remaining_waypoints_route_version
        #   @return [::Google::Protobuf::Timestamp]
        #     Indicates the minimum timestamp (exclusive) for which
        #     `Trip.remaining_waypoints.traffic_to_waypoint` and
        #     `Trip.remaining_waypoints.path_to_waypoint` data are retrieved. If data are
        #     unchanged since this timestamp, the fields above are
        #     not set in the response. If `remaining_waypoints_route_version` is
        #     unspecified, traffic and path are always retrieved.
        class GetTripRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ReportBillableTrip request message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Must be in the format
        #     `providers/{provider}/billableTrips/{billable_trip}`. The
        #     provider must be the Project ID (for example, `sample-cloud-project`) of
        #     the Google Cloud Project of which the service account making this call is a
        #     member.
        # @!attribute [rw] country_code
        #   @return [::String]
        #     Required. Two letter country code of the country where the trip takes
        #     place. Price is defined according to country code.
        # @!attribute [rw] platform
        #   @return [::Google::Maps::FleetEngine::V1::BillingPlatformIdentifier]
        #     The platform upon which the request was issued.
        # @!attribute [rw] related_ids
        #   @return [::Array<::String>]
        #     The identifiers that are directly related to the trip being reported. These
        #     are usually IDs (for example, session IDs) of pre-booking operations done
        #     before the trip ID is available. The number of `related_ids` is
        #     limited to 50.
        # @!attribute [rw] solution_type
        #   @return [::Google::Maps::FleetEngine::V1::ReportBillableTripRequest::SolutionType]
        #     The type of GMP product solution (for example,
        #     `ON_DEMAND_RIDESHARING_AND_DELIVERIES`) used for the reported trip.
        class ReportBillableTripRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Selector for different solution types of a reported trip.
          module SolutionType
            # The default value. For backwards-compatibility, the API will use
            # `ON_DEMAND_RIDESHARING_AND_DELIVERIES` by default which is the first
            # supported solution type.
            SOLUTION_TYPE_UNSPECIFIED = 0

            # The solution is an on-demand ridesharing and deliveries trip.
            ON_DEMAND_RIDESHARING_AND_DELIVERIES = 1
          end
        end

        # UpdateTrip request message.
        # @!attribute [rw] header
        #   @return [::Google::Maps::FleetEngine::V1::RequestHeader]
        #     The standard Fleet Engine request header.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Must be in the format
        #     `providers/{provider}/trips/{trip}`. The provider must
        #     be the Project ID (for example, `sample-consumer-project`) of the Google
        #     Cloud Project of which the service account making this call is a member.
        # @!attribute [rw] trip
        #   @return [::Google::Maps::FleetEngine::V1::Trip]
        #     Required. The Trip associated with the update.
        #
        #     The following fields are maintained by the Fleet Engine. Do not update
        #     them using Trip.update.
        #
        #     * `current_route_segment`
        #     * `current_route_segment_end_point`
        #     * `current_route_segment_traffic`
        #     * `current_route_segment_traffic_version`
        #     * `current_route_segment_version`
        #     * `dropoff_time`
        #     * `eta_to_next_waypoint`
        #     * `intermediate_destinations_version`
        #     * `last_location`
        #     * `name`
        #     * `number_of_passengers`
        #     * `pickup_time`
        #     * `remaining_distance_meters`
        #     * `remaining_time_to_first_waypoint`
        #     * `remaining_waypoints`
        #     * `remaining_waypoints_version`
        #     * `route`
        #
        #     When you update the `Trip.vehicle_id` for a shared trip, you must supply
        #     the list of `Trip.vehicle_waypoints` to specify the order of the remaining
        #     waypoints, otherwise the order will be undetermined.
        #
        #     When you specify `Trip.vehicle_waypoints`, the list must contain all
        #     the remaining waypoints of the vehicle's trips, with no extra waypoints.
        #     You must order these waypoints such that for a given trip, the pickup
        #     point is before intermediate destinations, and all intermediate
        #     destinations come before the drop-off point. An `EXCLUSIVE` trip's
        #     waypoints must not interleave with any other trips.
        #     The `trip_id`, `waypoint_type` and `location` fields are used, and all
        #     other TripWaypoint fields in `vehicle_waypoints` are ignored.
        #
        #     To avoid a race condition for trips with multiple destinations, you
        #     should provide `Trip.intermediate_destinations_version` when updating
        #     the trip status to `ENROUTE_TO_INTERMEDIATE_DESTINATION`. The
        #     `Trip.intermediate_destinations_version` passed must be consistent with
        #     Fleet Engine's version. If it isn't, the request fails.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The field mask indicating which fields in Trip to update.
        #     The `update_mask` must contain at least one field.
        class UpdateTripRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # SearchTrips request message.
        # @!attribute [rw] header
        #   @return [::Google::Maps::FleetEngine::V1::RequestHeader]
        #     The standard Fleet Engine request header.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Must be in the format `providers/{provider}`.
        #     The provider must be the Project ID (for example, `sample-cloud-project`)
        #     of the Google Cloud Project of which the service account making
        #     this call is a member.
        # @!attribute [rw] vehicle_id
        #   @return [::String]
        #     The vehicle associated with the trips in the request. If unspecified, the
        #     returned trips do not contain:
        #
        #     * `current_route_segment`
        #     * `remaining_waypoints`
        #     * `remaining_distance_meters`
        #     * `eta_to_first_waypoint`
        # @!attribute [rw] active_trips_only
        #   @return [::Boolean]
        #     If set to true, the response includes Trips that influence a driver's
        #     route.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     If not set, the server decides the number of results to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Set this to a value previously returned in the `SearchTripsResponse` to
        #     continue from previous results.
        # @!attribute [rw] minimum_staleness
        #   @return [::Google::Protobuf::Duration]
        #     If specified, returns the trips that have not been updated after the time
        #     `(current - minimum_staleness)`.
        class SearchTripsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # SearchTrips response message.
        # @!attribute [rw] trips
        #   @return [::Array<::Google::Maps::FleetEngine::V1::Trip>]
        #     The list of trips for the requested vehicle.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Pass this token in the SearchTripsRequest to page through list results. The
        #     API returns a trip list on each call, and when no more results remain the
        #     trip list is empty.
        class SearchTripsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
