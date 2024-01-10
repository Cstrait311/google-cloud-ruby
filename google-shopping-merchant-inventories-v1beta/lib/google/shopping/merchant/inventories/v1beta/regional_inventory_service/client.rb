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

require "google/cloud/errors"
require "google/shopping/merchant/inventories/v1beta/regionalinventory_pb"

module Google
  module Shopping
    module Merchant
      module Inventories
        module V1beta
          module RegionalInventoryService
            ##
            # Client for the RegionalInventoryService service.
            #
            # Service to manage regional inventory for products. There is also separate
            # `regions` resource and API to manage regions definitions.
            #
            class Client
              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "merchantapi.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :regional_inventory_service_stub

              ##
              # Configure the RegionalInventoryService Client class.
              #
              # See {::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all RegionalInventoryService clients
              #   ::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client.configure do |config|
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
                  namespace = ["Google", "Shopping", "Merchant", "Inventories", "V1beta"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.timeout = 60.0
                  default_config.retry_policy = {
                    initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the RegionalInventoryService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client::Configuration}
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
                @regional_inventory_service_stub.universe_domain
              end

              ##
              # Create a new RegionalInventoryService client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the RegionalInventoryService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # These require statements are intentionally placed here to initialize
                # the gRPC module only when it's required.
                # See https://github.com/googleapis/toolkit/issues/446
                require "gapic/grpc"
                require "google/shopping/merchant/inventories/v1beta/regionalinventory_services_pb"

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

                @regional_inventory_service_stub = ::Gapic::ServiceStub.new(
                  ::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Stub,
                  credentials: credentials,
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  channel_args: @config.channel_args,
                  interceptors: @config.interceptors,
                  channel_pool_config: @config.channel_pool
                )
              end

              # Service calls

              ##
              # Lists the `RegionalInventory` resources for the given product in your
              # merchant account. The response might contain fewer items than specified by
              # `pageSize`.  If `pageToken` was returned in previous request, it can be
              # used to obtain additional results.
              #
              # `RegionalInventory` resources are listed per product for a given account.
              #
              # @overload list_regional_inventories(request, options = nil)
              #   Pass arguments to `list_regional_inventories` via a request object, either of type
              #   {::Google::Shopping::Merchant::Inventories::V1beta::ListRegionalInventoriesRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Shopping::Merchant::Inventories::V1beta::ListRegionalInventoriesRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload list_regional_inventories(parent: nil, page_size: nil, page_token: nil)
              #   Pass arguments to `list_regional_inventories` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The `name` of the parent product to list `RegionalInventory`
              #     resources for. Format: `accounts/{account}/products/{product}`
              #   @param page_size [::Integer]
              #     The maximum number of `RegionalInventory` resources for the given product
              #     to return. The service returns fewer than this value if the number of
              #     inventories for the given product is less that than the `pageSize`. The
              #     default value is 25000. The maximum value is 100000; If a value higher than
              #     the maximum is specified, then the `pageSize` will default to the maximum.
              #   @param page_token [::String]
              #     A page token, received from a previous `ListRegionalInventories` call.
              #     Provide the page token to retrieve the subsequent page.
              #
              #     When paginating, all other parameters provided to `ListRegionalInventories`
              #     must match the call that provided the page token. The token returned as
              #     {::Google::Shopping::Merchant::Inventories::V1beta::ListRegionalInventoriesResponse#next_page_token nextPageToken}
              #     in the response to the previous request.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Gapic::PagedEnumerable<::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventory>]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Gapic::PagedEnumerable<::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventory>]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/shopping/merchant/inventories/v1beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Shopping::Merchant::Inventories::V1beta::ListRegionalInventoriesRequest.new
              #
              #   # Call the list_regional_inventories method.
              #   result = client.list_regional_inventories request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventory.
              #     p item
              #   end
              #
              def list_regional_inventories request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Shopping::Merchant::Inventories::V1beta::ListRegionalInventoriesRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.list_regional_inventories.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Shopping::Merchant::Inventories::V1beta::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.parent
                  header_params["parent"] = request.parent
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.list_regional_inventories.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.list_regional_inventories.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @regional_inventory_service_stub.call_rpc :list_regional_inventories, request, options: options do |response, operation|
                  response = ::Gapic::PagedEnumerable.new @regional_inventory_service_stub, :list_regional_inventories, request, response, operation, options
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Inserts a `RegionalInventory` to a given product in your
              # merchant account.
              #
              # Replaces the full `RegionalInventory` resource if an entry with the same
              # {::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventory#region `region`}
              # already exists for the product.
              #
              # It might take up to 30 minutes for the new or updated `RegionalInventory`
              # resource to appear in products.
              #
              # @overload insert_regional_inventory(request, options = nil)
              #   Pass arguments to `insert_regional_inventory` via a request object, either of type
              #   {::Google::Shopping::Merchant::Inventories::V1beta::InsertRegionalInventoryRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Shopping::Merchant::Inventories::V1beta::InsertRegionalInventoryRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload insert_regional_inventory(parent: nil, regional_inventory: nil)
              #   Pass arguments to `insert_regional_inventory` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The account and product where this inventory will be inserted.
              #     Format: `accounts/{account}/products/{product}`
              #   @param regional_inventory [::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventory, ::Hash]
              #     Required. Regional inventory information to add to the product. If the
              #     product already has a `RegionalInventory` resource for the same `region`,
              #     full replacement of the `RegionalInventory` resource is performed.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventory]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventory]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/shopping/merchant/inventories/v1beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Shopping::Merchant::Inventories::V1beta::InsertRegionalInventoryRequest.new
              #
              #   # Call the insert_regional_inventory method.
              #   result = client.insert_regional_inventory request
              #
              #   # The returned object is of type Google::Shopping::Merchant::Inventories::V1beta::RegionalInventory.
              #   p result
              #
              def insert_regional_inventory request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Shopping::Merchant::Inventories::V1beta::InsertRegionalInventoryRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.insert_regional_inventory.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Shopping::Merchant::Inventories::V1beta::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.parent
                  header_params["parent"] = request.parent
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.insert_regional_inventory.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.insert_regional_inventory.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @regional_inventory_service_stub.call_rpc :insert_regional_inventory, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes the specified `RegionalInventory` resource from the given product
              # in your merchant account.  It might take up to an hour for the
              # `RegionalInventory` to be deleted from the specific product.
              # Once you have received a successful delete response, wait for that
              # period before attempting a delete again.
              #
              # @overload delete_regional_inventory(request, options = nil)
              #   Pass arguments to `delete_regional_inventory` via a request object, either of type
              #   {::Google::Shopping::Merchant::Inventories::V1beta::DeleteRegionalInventoryRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Shopping::Merchant::Inventories::V1beta::DeleteRegionalInventoryRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload delete_regional_inventory(name: nil)
              #   Pass arguments to `delete_regional_inventory` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The name of the `RegionalInventory` resource to delete.
              #     Format:
              #     `accounts/{account}/products/{product}/regionalInventories/{region}`
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Protobuf::Empty]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Protobuf::Empty]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/shopping/merchant/inventories/v1beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Shopping::Merchant::Inventories::V1beta::DeleteRegionalInventoryRequest.new
              #
              #   # Call the delete_regional_inventory method.
              #   result = client.delete_regional_inventory request
              #
              #   # The returned object is of type Google::Protobuf::Empty.
              #   p result
              #
              def delete_regional_inventory request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Shopping::Merchant::Inventories::V1beta::DeleteRegionalInventoryRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.delete_regional_inventory.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Shopping::Merchant::Inventories::V1beta::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.name
                  header_params["name"] = request.name
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.delete_regional_inventory.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.delete_regional_inventory.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @regional_inventory_service_stub.call_rpc :delete_regional_inventory, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the RegionalInventoryService API.
              #
              # This class represents the configuration for RegionalInventoryService,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # list_regional_inventories to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_regional_inventories.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_regional_inventories.timeout = 20.0
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
              #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
              #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
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
              # @!attribute [rw] channel_args
              #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
              #   `GRPC::Core::Channel` object is provided as the credential.
              #   @return [::Hash]
              # @!attribute [rw] interceptors
              #   An array of interceptors that are run before calls are executed.
              #   @return [::Array<::GRPC::ClientInterceptor>]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional gRPC headers to be sent with the call.
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
                DEFAULT_ENDPOINT = "merchantapi.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
                config_attr :interceptors,  nil, ::Array, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil
                config_attr :universe_domain, nil, ::String, nil

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
                # Configuration for the channel pool
                # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
                #
                def channel_pool
                  @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
                end

                ##
                # Configuration RPC class for the RegionalInventoryService API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
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
                  # RPC-specific configuration for `list_regional_inventories`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_regional_inventories
                  ##
                  # RPC-specific configuration for `insert_regional_inventory`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :insert_regional_inventory
                  ##
                  # RPC-specific configuration for `delete_regional_inventory`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_regional_inventory

                  # @private
                  def initialize parent_rpcs = nil
                    list_regional_inventories_config = parent_rpcs.list_regional_inventories if parent_rpcs.respond_to? :list_regional_inventories
                    @list_regional_inventories = ::Gapic::Config::Method.new list_regional_inventories_config
                    insert_regional_inventory_config = parent_rpcs.insert_regional_inventory if parent_rpcs.respond_to? :insert_regional_inventory
                    @insert_regional_inventory = ::Gapic::Config::Method.new insert_regional_inventory_config
                    delete_regional_inventory_config = parent_rpcs.delete_regional_inventory if parent_rpcs.respond_to? :delete_regional_inventory
                    @delete_regional_inventory = ::Gapic::Config::Method.new delete_regional_inventory_config

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
