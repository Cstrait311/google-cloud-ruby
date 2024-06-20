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
  module Cloud
    module Monitoring
      module V3
        # An internal checker allows Uptime checks to run on private/internal GCP
        # resources.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] name
        #   @return [::String]
        #     A unique resource name for this InternalChecker. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/internalCheckers/[INTERNAL_CHECKER_ID]
        #
        #     `[PROJECT_ID_OR_NUMBER]` is the Cloud Monitoring Metrics Scope project for
        #     the Uptime check config associated with the internal checker.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The checker's human-readable name. The display name
        #     should be unique within a Cloud Monitoring Metrics Scope in order to make
        #     it easier to identify; however, uniqueness is not enforced.
        # @!attribute [rw] network
        #   @return [::String]
        #     The [GCP VPC network](https://cloud.google.com/vpc/docs/vpc) where the
        #     internal resource lives (ex: "default").
        # @!attribute [rw] gcp_zone
        #   @return [::String]
        #     The GCP zone the Uptime check should egress from. Only respected for
        #     internal Uptime checks, where internal_network is specified.
        # @!attribute [rw] peer_project_id
        #   @return [::String]
        #     The GCP project ID where the internal checker lives. Not necessary
        #     the same as the Metrics Scope project.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Monitoring::V3::InternalChecker::State]
        #     The current operational state of the internal checker.
        class InternalChecker
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Operational states for an internal checker.
          module State
            # An internal checker should never be in the unspecified state.
            UNSPECIFIED = 0

            # The checker is being created, provisioned, and configured. A checker in
            # this state can be returned by `ListInternalCheckers` or
            # `GetInternalChecker`, as well as by examining the [long running
            # Operation](https://cloud.google.com/apis/design/design_patterns#long_running_operations)
            # that created it.
            CREATING = 1

            # The checker is running and available for use. A checker in this state
            # can be returned by `ListInternalCheckers` or `GetInternalChecker` as
            # well as by examining the [long running
            # Operation](https://cloud.google.com/apis/design/design_patterns#long_running_operations)
            # that created it.
            # If a checker is being torn down, it is neither visible nor usable, so
            # there is no "deleting" or "down" state.
            RUNNING = 2
          end
        end

        # Describes a Synthetic Monitor to be invoked by Uptime.
        # @!attribute [rw] cloud_function_v2
        #   @return [::Google::Cloud::Monitoring::V3::SyntheticMonitorTarget::CloudFunctionV2Target]
        #     Target a Synthetic Monitor GCFv2 instance.
        class SyntheticMonitorTarget
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A Synthetic Monitor deployed to a Cloud Functions V2 instance.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Fully qualified GCFv2 resource name
          #     i.e. `projects/{project}/locations/{location}/functions/{function}`
          #     Required.
          # @!attribute [r] cloud_run_revision
          #   @return [::Google::Api::MonitoredResource]
          #     Output only. The `cloud_run_revision` Monitored Resource associated with
          #     the GCFv2. The Synthetic Monitor execution results (metrics, logs, and
          #     spans) are reported against this Monitored Resource. This field is output
          #     only.
          class CloudFunctionV2Target
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # This message configures which resources and services to monitor for
        # availability.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. A unique resource name for this Uptime check configuration. The
        #     format is:
        #
        #          projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID]
        #
        #     `[PROJECT_ID_OR_NUMBER]` is the Workspace host project associated with the
        #     Uptime check.
        #
        #     This field should be omitted when creating the Uptime check configuration;
        #     on create, the resource name is assigned by the server and included in the
        #     response.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     A human-friendly name for the Uptime check configuration. The display name
        #     should be unique within a Cloud Monitoring Workspace in order to make it
        #     easier to identify; however, uniqueness is not enforced. Required.
        # @!attribute [rw] monitored_resource
        #   @return [::Google::Api::MonitoredResource]
        #     The [monitored
        #     resource](https://cloud.google.com/monitoring/api/resources) associated
        #     with the configuration.
        #     The following monitored resource types are valid for this field:
        #       `uptime_url`,
        #       `gce_instance`,
        #       `gae_app`,
        #       `aws_ec2_instance`,
        #       `aws_elb_load_balancer`
        #       `k8s_service`
        #       `servicedirectory_service`
        #       `cloud_run_revision`
        # @!attribute [rw] resource_group
        #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::ResourceGroup]
        #     The group resource associated with the configuration.
        # @!attribute [rw] synthetic_monitor
        #   @return [::Google::Cloud::Monitoring::V3::SyntheticMonitorTarget]
        #     Specifies a Synthetic Monitor to invoke.
        # @!attribute [rw] http_check
        #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::HttpCheck]
        #     Contains information needed to make an HTTP or HTTPS check.
        # @!attribute [rw] tcp_check
        #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::TcpCheck]
        #     Contains information needed to make a TCP check.
        # @!attribute [rw] period
        #   @return [::Google::Protobuf::Duration]
        #     How often, in seconds, the Uptime check is performed.
        #     Currently, the only supported values are `60s` (1 minute), `300s`
        #     (5 minutes), `600s` (10 minutes), and `900s` (15 minutes). Optional,
        #     defaults to `60s`.
        # @!attribute [rw] timeout
        #   @return [::Google::Protobuf::Duration]
        #     The maximum amount of time to wait for the request to complete (must be
        #     between 1 and 60 seconds). Required.
        # @!attribute [rw] content_matchers
        #   @return [::Array<::Google::Cloud::Monitoring::V3::UptimeCheckConfig::ContentMatcher>]
        #     The content that is expected to appear in the data returned by the target
        #     server against which the check is run.  Currently, only the first entry
        #     in the `content_matchers` list is supported, and additional entries will
        #     be ignored. This field is optional and should only be specified if a
        #     content match is required as part of the/ Uptime check.
        # @!attribute [rw] checker_type
        #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::CheckerType]
        #     The type of checkers to use to execute the Uptime check.
        # @!attribute [rw] selected_regions
        #   @return [::Array<::Google::Cloud::Monitoring::V3::UptimeCheckRegion>]
        #     The list of regions from which the check will be run.
        #     Some regions contain one location, and others contain more than one.
        #     If this field is specified, enough regions must be provided to include a
        #     minimum of 3 locations.  Not specifying this field will result in Uptime
        #     checks running from all available regions.
        # @!attribute [rw] is_internal
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Boolean]
        #     If this is `true`, then checks are made only from the 'internal_checkers'.
        #     If it is `false`, then checks are made only from the 'selected_regions'.
        #     It is an error to provide 'selected_regions' when is_internal is `true`,
        #     or to provide 'internal_checkers' when is_internal is `false`.
        # @!attribute [rw] internal_checkers
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Array<::Google::Cloud::Monitoring::V3::InternalChecker>]
        #     The internal checkers that this check will egress from. If `is_internal` is
        #     `true` and this list is empty, the check will egress from all the
        #     InternalCheckers configured for the project that owns this
        #     `UptimeCheckConfig`.
        # @!attribute [rw] user_labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     User-supplied key/value data to be used for organizing and
        #     identifying the `UptimeCheckConfig` objects.
        #
        #     The field can contain up to 64 entries. Each key and value is limited to
        #     63 Unicode characters or 128 bytes, whichever is smaller. Labels and
        #     values can contain only lowercase letters, numerals, underscores, and
        #     dashes. Keys must begin with a letter.
        class UptimeCheckConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The resource submessage for group checks. It can be used instead of a
          # monitored resource, when multiple resources are being monitored.
          # @!attribute [rw] group_id
          #   @return [::String]
          #     The group of resources being monitored. Should be only the `[GROUP_ID]`,
          #     and not the full-path
          #     `projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]`.
          # @!attribute [rw] resource_type
          #   @return [::Google::Cloud::Monitoring::V3::GroupResourceType]
          #     The resource type of the group members.
          class ResourceGroup
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Information involved in sending ICMP pings alongside public HTTP/TCP
          # checks. For HTTP, the pings are performed for each part of the redirect
          # chain.
          # @!attribute [rw] pings_count
          #   @return [::Integer]
          #     Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
          class PingConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Information involved in an HTTP/HTTPS Uptime check request.
          # @!attribute [rw] request_method
          #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::HttpCheck::RequestMethod]
          #     The HTTP request method to use for the check. If set to
          #     `METHOD_UNSPECIFIED` then `request_method` defaults to `GET`.
          # @!attribute [rw] use_ssl
          #   @return [::Boolean]
          #     If `true`, use HTTPS instead of HTTP to run the check.
          # @!attribute [rw] path
          #   @return [::String]
          #     Optional (defaults to "/"). The path to the page against which to run
          #     the check. Will be combined with the `host` (specified within the
          #     `monitored_resource`) and `port` to construct the full URL. If the
          #     provided path does not begin with "/", a "/" will be prepended
          #     automatically.
          # @!attribute [rw] port
          #   @return [::Integer]
          #     Optional (defaults to 80 when `use_ssl` is `false`, and 443 when
          #     `use_ssl` is `true`). The TCP port on the HTTP server against which to
          #     run the check. Will be combined with host (specified within the
          #     `monitored_resource`) and `path` to construct the full URL.
          # @!attribute [rw] auth_info
          #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::HttpCheck::BasicAuthentication]
          #     The authentication information. Optional when creating an HTTP check;
          #     defaults to empty.
          #     Do not set both `auth_method` and `auth_info`.
          # @!attribute [rw] mask_headers
          #   @return [::Boolean]
          #     Boolean specifying whether to encrypt the header information.
          #     Encryption should be specified for any headers related to authentication
          #     that you do not wish to be seen when retrieving the configuration. The
          #     server will be responsible for encrypting the headers.
          #     On Get/List calls, if `mask_headers` is set to `true` then the headers
          #     will be obscured with `******.`
          # @!attribute [rw] headers
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     The list of headers to send as part of the Uptime check request.
          #     If two headers have the same key and different values, they should
          #     be entered as a single header, with the value being a comma-separated
          #     list of all the desired values as described at
          #     https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31).
          #     Entering two separate headers with the same key in a Create call will
          #     cause the first to be overwritten by the second.
          #     The maximum number of headers allowed is 100.
          # @!attribute [rw] content_type
          #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::HttpCheck::ContentType]
          #     The content type header to use for the check. The following
          #     configurations result in errors:
          #     1. Content type is specified in both the `headers` field and the
          #     `content_type` field.
          #     2. Request method is `GET` and `content_type` is not `TYPE_UNSPECIFIED`
          #     3. Request method is `POST` and `content_type` is `TYPE_UNSPECIFIED`.
          #     4. Request method is `POST` and a "Content-Type" header is provided via
          #     `headers` field. The `content_type` field should be used instead.
          # @!attribute [rw] custom_content_type
          #   @return [::String]
          #     A user provided content type header to use for the check. The invalid
          #     configurations outlined in the `content_type` field apply to
          #     `custom_content_type`, as well as the following:
          #     1. `content_type` is `URL_ENCODED` and `custom_content_type` is set.
          #     2. `content_type` is `USER_PROVIDED` and `custom_content_type` is not
          #     set.
          # @!attribute [rw] validate_ssl
          #   @return [::Boolean]
          #     Boolean specifying whether to include SSL certificate validation as a
          #     part of the Uptime check. Only applies to checks where
          #     `monitored_resource` is set to `uptime_url`. If `use_ssl` is `false`,
          #     setting `validate_ssl` to `true` has no effect.
          # @!attribute [rw] body
          #   @return [::String]
          #     The request body associated with the HTTP POST request. If `content_type`
          #     is `URL_ENCODED`, the body passed in must be URL-encoded. Users can
          #     provide a `Content-Length` header via the `headers` field or the API will
          #     do so. If the `request_method` is `GET` and `body` is not empty, the API
          #     will return an error. The maximum byte size is 1 megabyte.
          #
          #     Note: If client libraries aren't used (which performs the conversion
          #     automatically) base64 encode your `body` data since the field is of
          #     `bytes` type.
          # @!attribute [rw] accepted_response_status_codes
          #   @return [::Array<::Google::Cloud::Monitoring::V3::UptimeCheckConfig::HttpCheck::ResponseStatusCode>]
          #     If present, the check will only pass if the HTTP response status code is
          #     in this set of status codes. If empty, the HTTP status code will only
          #     pass if the HTTP status code is 200-299.
          # @!attribute [rw] ping_config
          #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::PingConfig]
          #     Contains information needed to add pings to an HTTP check.
          # @!attribute [rw] service_agent_authentication
          #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::HttpCheck::ServiceAgentAuthentication]
          #     If specified, Uptime will generate and attach an OIDC JWT token for the
          #     Monitoring service agent service account as an `Authorization` header
          #     in the HTTP request when probing.
          class HttpCheck
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The authentication parameters to provide to the specified resource or
            # URL that requires a username and password. Currently, only
            # [Basic HTTP authentication](https://tools.ietf.org/html/rfc7617) is
            # supported in Uptime checks.
            # @!attribute [rw] username
            #   @return [::String]
            #     The username to use when authenticating with the HTTP server.
            # @!attribute [rw] password
            #   @return [::String]
            #     The password to use when authenticating with the HTTP server.
            class BasicAuthentication
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # A status to accept. Either a status code class like "2xx", or an integer
            # status code like "200".
            # @!attribute [rw] status_value
            #   @return [::Integer]
            #     A status code to accept.
            # @!attribute [rw] status_class
            #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::HttpCheck::ResponseStatusCode::StatusClass]
            #     A class of status codes to accept.
            class ResponseStatusCode
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # An HTTP status code class.
              module StatusClass
                # Default value that matches no status codes.
                STATUS_CLASS_UNSPECIFIED = 0

                # The class of status codes between 100 and 199.
                STATUS_CLASS_1XX = 100

                # The class of status codes between 200 and 299.
                STATUS_CLASS_2XX = 200

                # The class of status codes between 300 and 399.
                STATUS_CLASS_3XX = 300

                # The class of status codes between 400 and 499.
                STATUS_CLASS_4XX = 400

                # The class of status codes between 500 and 599.
                STATUS_CLASS_5XX = 500

                # The class of all status codes.
                STATUS_CLASS_ANY = 1000
              end
            end

            # Contains information needed for generating an
            # [OpenID Connect
            # token](https://developers.google.com/identity/protocols/OpenIDConnect).
            # The OIDC token will be generated for the Monitoring service agent service
            # account.
            # @!attribute [rw] type
            #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::HttpCheck::ServiceAgentAuthentication::ServiceAgentAuthenticationType]
            #     Type of authentication.
            class ServiceAgentAuthentication
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Type of authentication.
              module ServiceAgentAuthenticationType
                # Default value, will result in OIDC Authentication.
                SERVICE_AGENT_AUTHENTICATION_TYPE_UNSPECIFIED = 0

                # OIDC Authentication
                OIDC_TOKEN = 1
              end
            end

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class HeadersEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The HTTP request method options.
            module RequestMethod
              # No request method specified.
              METHOD_UNSPECIFIED = 0

              # GET request.
              GET = 1

              # POST request.
              POST = 2
            end

            # Header options corresponding to the content type of a HTTP request body.
            module ContentType
              # No content type specified.
              TYPE_UNSPECIFIED = 0

              # `body` is in URL-encoded form. Equivalent to setting the `Content-Type`
              # to `application/x-www-form-urlencoded` in the HTTP request.
              URL_ENCODED = 1

              # `body` is in `custom_content_type` form. Equivalent to setting the
              # `Content-Type` to the contents of `custom_content_type` in the HTTP
              # request.
              USER_PROVIDED = 2
            end
          end

          # Information required for a TCP Uptime check request.
          # @!attribute [rw] port
          #   @return [::Integer]
          #     The TCP port on the server against which to run the check. Will be
          #     combined with host (specified within the `monitored_resource`) to
          #     construct the full URL. Required.
          # @!attribute [rw] ping_config
          #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::PingConfig]
          #     Contains information needed to add pings to a TCP check.
          class TcpCheck
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Optional. Used to perform content matching. This allows matching based on
          # substrings and regular expressions, together with their negations. Only the
          # first 4&nbsp;MB of an HTTP or HTTPS check's response (and the first
          # 1&nbsp;MB of a TCP check's response) are examined for purposes of content
          # matching.
          # @!attribute [rw] content
          #   @return [::String]
          #     String, regex or JSON content to match. Maximum 1024 bytes. An empty
          #     `content` string indicates no content matching is to be performed.
          # @!attribute [rw] matcher
          #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::ContentMatcher::ContentMatcherOption]
          #     The type of content matcher that will be applied to the server output,
          #     compared to the `content` string when the check is run.
          # @!attribute [rw] json_path_matcher
          #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::ContentMatcher::JsonPathMatcher]
          #     Matcher information for `MATCHES_JSON_PATH` and `NOT_MATCHES_JSON_PATH`
          class ContentMatcher
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Information needed to perform a JSONPath content match.
            # Used for `ContentMatcherOption::MATCHES_JSON_PATH` and
            # `ContentMatcherOption::NOT_MATCHES_JSON_PATH`.
            # @!attribute [rw] json_path
            #   @return [::String]
            #     JSONPath within the response output pointing to the expected
            #     `ContentMatcher::content` to match against.
            # @!attribute [rw] json_matcher
            #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckConfig::ContentMatcher::JsonPathMatcher::JsonPathMatcherOption]
            #     The type of JSONPath match that will be applied to the JSON output
            #     (`ContentMatcher.content`)
            class JsonPathMatcher
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Options to perform JSONPath content matching.
              module JsonPathMatcherOption
                # No JSONPath matcher type specified (not valid).
                JSON_PATH_MATCHER_OPTION_UNSPECIFIED = 0

                # Selects 'exact string' matching. The match succeeds if the content at
                # the `json_path` within the output is exactly the same as the
                # `content` string.
                EXACT_MATCH = 1

                # Selects regular-expression matching. The match succeeds if the
                # content at the `json_path` within the output matches the regular
                # expression specified in the `content` string.
                REGEX_MATCH = 2
              end
            end

            # Options to perform content matching.
            module ContentMatcherOption
              # No content matcher type specified (maintained for backward
              # compatibility, but deprecated for future use).
              # Treated as `CONTAINS_STRING`.
              CONTENT_MATCHER_OPTION_UNSPECIFIED = 0

              # Selects substring matching. The match succeeds if the output contains
              # the `content` string.  This is the default value for checks without
              # a `matcher` option, or where the value of `matcher` is
              # `CONTENT_MATCHER_OPTION_UNSPECIFIED`.
              CONTAINS_STRING = 1

              # Selects negation of substring matching. The match succeeds if the
              # output does _NOT_ contain the `content` string.
              NOT_CONTAINS_STRING = 2

              # Selects regular-expression matching. The match succeeds if the output
              # matches the regular expression specified in the `content` string.
              # Regex matching is only supported for HTTP/HTTPS checks.
              MATCHES_REGEX = 3

              # Selects negation of regular-expression matching. The match succeeds if
              # the output does _NOT_ match the regular expression specified in the
              # `content` string. Regex matching is only supported for HTTP/HTTPS
              # checks.
              NOT_MATCHES_REGEX = 4

              # Selects JSONPath matching. See `JsonPathMatcher` for details on when
              # the match succeeds. JSONPath matching is only supported for HTTP/HTTPS
              # checks.
              MATCHES_JSON_PATH = 5

              # Selects JSONPath matching. See `JsonPathMatcher` for details on when
              # the match succeeds. Succeeds when output does _NOT_ match as specified.
              # JSONPath is only supported for HTTP/HTTPS checks.
              NOT_MATCHES_JSON_PATH = 6
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class UserLabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # What kind of checkers are available to be used by the check.
          module CheckerType
            # The default checker type. Currently converted to `STATIC_IP_CHECKERS`
            # on creation, the default conversion behavior may change in the future.
            CHECKER_TYPE_UNSPECIFIED = 0

            # `STATIC_IP_CHECKERS` are used for uptime checks that perform egress
            # across the public internet. `STATIC_IP_CHECKERS` use the static IP
            # addresses returned by `ListUptimeCheckIps`.
            STATIC_IP_CHECKERS = 1

            # `VPC_CHECKERS` are used for uptime checks that perform egress using
            # Service Directory and private network access. When using `VPC_CHECKERS`,
            # the monitored resource type must be `servicedirectory_service`.
            VPC_CHECKERS = 3
          end
        end

        # Contains the region, location, and list of IP
        # addresses where checkers in the location run from.
        # @!attribute [rw] region
        #   @return [::Google::Cloud::Monitoring::V3::UptimeCheckRegion]
        #     A broad region category in which the IP address is located.
        # @!attribute [rw] location
        #   @return [::String]
        #     A more specific location within the region that typically encodes
        #     a particular city/town/metro (and its containing state/province or country)
        #     within the broader umbrella region category.
        # @!attribute [rw] ip_address
        #   @return [::String]
        #     The IP address from which the Uptime check originates. This is a fully
        #     specified IP address (not an IP address range). Most IP addresses, as of
        #     this publication, are in IPv4 format; however, one should not rely on the
        #     IP addresses being in IPv4 format indefinitely, and should support
        #     interpreting this field in either IPv4 or IPv6 format.
        class UptimeCheckIp
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The regions from which an Uptime check can be run.
        module UptimeCheckRegion
          # Default value if no region is specified. Will result in Uptime checks
          # running from all regions.
          REGION_UNSPECIFIED = 0

          # Allows checks to run from locations within the United States of America.
          USA = 1

          # Allows checks to run from locations within the continent of Europe.
          EUROPE = 2

          # Allows checks to run from locations within the continent of South
          # America.
          SOUTH_AMERICA = 3

          # Allows checks to run from locations within the Asia Pacific area (ex:
          # Singapore).
          ASIA_PACIFIC = 4

          # Allows checks to run from locations within the western United States of
          # America
          USA_OREGON = 5

          # Allows checks to run from locations within the central United States of
          # America
          USA_IOWA = 6

          # Allows checks to run from locations within the eastern United States of
          # America
          USA_VIRGINIA = 7
        end

        # The supported resource types that can be used as values of
        # `group_resource.resource_type`.
        # `INSTANCE` includes `gce_instance` and `aws_ec2_instance` resource types.
        # The resource types `gae_app` and `uptime_url` are not valid here because
        # group checks on App Engine modules and URLs are not allowed.
        module GroupResourceType
          # Default value (not valid).
          RESOURCE_TYPE_UNSPECIFIED = 0

          # A group of instances from Google Cloud Platform (GCP) or
          # Amazon Web Services (AWS).
          INSTANCE = 1

          # A group of Amazon ELB load balancers.
          AWS_ELB_LOAD_BALANCER = 2
        end
      end
    end
  end
end
