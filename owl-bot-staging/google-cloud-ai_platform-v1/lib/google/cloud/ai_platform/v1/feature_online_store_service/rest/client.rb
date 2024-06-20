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

require "google/cloud/errors"
require "google/cloud/aiplatform/v1/feature_online_store_service_pb"
require "google/cloud/ai_platform/v1/feature_online_store_service/rest/service_stub"
require "google/cloud/location/rest"
require "google/iam/v1/rest"

module Google
  module Cloud
    module AIPlatform
      module V1
        module FeatureOnlineStoreService
          module Rest
            ##
            # REST client for the FeatureOnlineStoreService service.
            #
            # A service for fetching feature values from the online store.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "aiplatform.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :feature_online_store_service_stub

              ##
              # Configure the FeatureOnlineStoreService Client class.
              #
              # See {::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all FeatureOnlineStoreService clients
              #   ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "AIPlatform", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the FeatureOnlineStoreService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @feature_online_store_service_stub.universe_domain
              end

              ##
              # Create a new FeatureOnlineStoreService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the FeatureOnlineStoreService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint.nil? ||
                                         (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-"))
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @feature_online_store_service_stub = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials
                )

                @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @feature_online_store_service_stub.endpoint
                  config.universe_domain = @feature_online_store_service_stub.universe_domain
                  config.bindings_override = @config.bindings_override
                end

                @iam_policy_client = Google::Iam::V1::IAMPolicy::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @feature_online_store_service_stub.endpoint
                  config.universe_domain = @feature_online_store_service_stub.universe_domain
                  config.bindings_override = @config.bindings_override
                end
              end

              ##
              # Get the associated client for mix-in of the Locations.
              #
              # @return [Google::Cloud::Location::Locations::Rest::Client]
              #
              attr_reader :location_client

              ##
              # Get the associated client for mix-in of the IAMPolicy.
              #
              # @return [Google::Iam::V1::IAMPolicy::Rest::Client]
              #
              attr_reader :iam_policy_client

              # Service calls

              ##
              # Fetch feature values under a FeatureView.
              #
              # @overload fetch_feature_values(request, options = nil)
              #   Pass arguments to `fetch_feature_values` via a request object, either of type
              #   {::Google::Cloud::AIPlatform::V1::FetchFeatureValuesRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AIPlatform::V1::FetchFeatureValuesRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload fetch_feature_values(feature_view: nil, data_key: nil, data_format: nil)
              #   Pass arguments to `fetch_feature_values` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param feature_view [::String]
              #     Required. FeatureView resource format
              #     `projects/{project}/locations/{location}/featureOnlineStores/{featureOnlineStore}/featureViews/{featureView}`
              #   @param data_key [::Google::Cloud::AIPlatform::V1::FeatureViewDataKey, ::Hash]
              #     Optional. The request key to fetch feature values for.
              #   @param data_format [::Google::Cloud::AIPlatform::V1::FeatureViewDataFormat]
              #     Optional. Response data format. If not set,
              #     {::Google::Cloud::AIPlatform::V1::FeatureViewDataFormat::KEY_VALUE FeatureViewDataFormat.KEY_VALUE}
              #     will be used.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::FetchFeatureValuesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::FetchFeatureValuesResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/ai_platform/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::AIPlatform::V1::FetchFeatureValuesRequest.new
              #
              #   # Call the fetch_feature_values method.
              #   result = client.fetch_feature_values request
              #
              #   # The returned object is of type Google::Cloud::AIPlatform::V1::FetchFeatureValuesResponse.
              #   p result
              #
              def fetch_feature_values request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AIPlatform::V1::FetchFeatureValuesRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.fetch_feature_values.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AIPlatform::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.fetch_feature_values.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.fetch_feature_values.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @feature_online_store_service_stub.fetch_feature_values request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Search the nearest entities under a FeatureView.
              # Search only works for indexable feature view; if a feature view isn't
              # indexable, returns Invalid argument response.
              #
              # @overload search_nearest_entities(request, options = nil)
              #   Pass arguments to `search_nearest_entities` via a request object, either of type
              #   {::Google::Cloud::AIPlatform::V1::SearchNearestEntitiesRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AIPlatform::V1::SearchNearestEntitiesRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload search_nearest_entities(feature_view: nil, query: nil, return_full_entity: nil)
              #   Pass arguments to `search_nearest_entities` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param feature_view [::String]
              #     Required. FeatureView resource format
              #     `projects/{project}/locations/{location}/featureOnlineStores/{featureOnlineStore}/featureViews/{featureView}`
              #   @param query [::Google::Cloud::AIPlatform::V1::NearestNeighborQuery, ::Hash]
              #     Required. The query.
              #   @param return_full_entity [::Boolean]
              #     Optional. If set to true, the full entities (including all vector values
              #     and metadata) of the nearest neighbors are returned; otherwise only entity
              #     id of the nearest neighbors will be returned. Note that returning full
              #     entities will significantly increase the latency and cost of the query.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::SearchNearestEntitiesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::SearchNearestEntitiesResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/ai_platform/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::AIPlatform::V1::SearchNearestEntitiesRequest.new
              #
              #   # Call the search_nearest_entities method.
              #   result = client.search_nearest_entities request
              #
              #   # The returned object is of type Google::Cloud::AIPlatform::V1::SearchNearestEntitiesResponse.
              #   p result
              #
              def search_nearest_entities request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AIPlatform::V1::SearchNearestEntitiesRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.search_nearest_entities.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AIPlatform::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.search_nearest_entities.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.search_nearest_entities.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @feature_online_store_service_stub.search_nearest_entities request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the FeatureOnlineStoreService REST API.
              #
              # This class represents the configuration for FeatureOnlineStoreService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # fetch_feature_values to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.fetch_feature_values.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.fetch_feature_values.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   A custom service endpoint, as a hostname or hostname:port. The default is
              #   nil, indicating to use the default endpoint in the current universe domain.
              #   @return [::String,nil]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              # @!attribute [rw] universe_domain
              #   The universe domain within which to make requests. This determines the
              #   default endpoint URL. The default value of nil uses the environment
              #   universe (usually the default "googleapis.com" universe).
              #   @return [::String,nil]
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "aiplatform.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil
                config_attr :universe_domain, nil, ::String, nil

                # @private
                # Overrides for http bindings for the RPCs of this service
                # are only used when this service is used as mixin, and only
                # by the host service.
                # @return [::Hash{::Symbol=>::Array<::Gapic::Rest::GrpcTranscoder::HttpBinding>}]
                config_attr :bindings_override, {}, ::Hash, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the FeatureOnlineStoreService API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `fetch_feature_values`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :fetch_feature_values
                  ##
                  # RPC-specific configuration for `search_nearest_entities`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :search_nearest_entities

                  # @private
                  def initialize parent_rpcs = nil
                    fetch_feature_values_config = parent_rpcs.fetch_feature_values if parent_rpcs.respond_to? :fetch_feature_values
                    @fetch_feature_values = ::Gapic::Config::Method.new fetch_feature_values_config
                    search_nearest_entities_config = parent_rpcs.search_nearest_entities if parent_rpcs.respond_to? :search_nearest_entities
                    @search_nearest_entities = ::Gapic::Config::Method.new search_nearest_entities_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
