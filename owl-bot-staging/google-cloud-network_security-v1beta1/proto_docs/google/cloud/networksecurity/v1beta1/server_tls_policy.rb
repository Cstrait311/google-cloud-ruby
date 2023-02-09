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
    module NetworkSecurity
      module V1beta1
        # ServerTlsPolicy is a resource that specifies how a server should authenticate
        # incoming requests. This resource itself does not affect configuration unless
        # it is attached to a target https proxy or endpoint config selector resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the ServerTlsPolicy resource. It matches the pattern
        #     `projects/*/locations/{location}/serverTlsPolicies/{server_tls_policy}`
        # @!attribute [rw] description
        #   @return [::String]
        #     Free-text description of the resource.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the resource was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the resource was updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Set of label tags associated with the resource.
        # @!attribute [rw] allow_open
        #   @return [::Boolean]
        #     Determines if server allows plaintext connections. If set to true, server
        #     allows plain text connections. By default, it is set to false. This setting
        #     is not exclusive of other encryption modes. For example, if `allow_open`
        #     and `mtls_policy` are set, server allows both plain text and mTLS
        #     connections. See documentation of other encryption modes to confirm
        #     compatibility.
        #
        #     Consider using it if you wish to upgrade in place your deployment to TLS
        #     while having mixed TLS and non-TLS traffic reaching port :80.
        # @!attribute [rw] server_certificate
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::CertificateProvider]
        #     Defines a mechanism to provision server identity (public and private keys).
        #     Cannot be combined with `allow_open` as a permissive mode that allows both
        #     plain text and TLS is not supported.
        # @!attribute [rw] mtls_policy
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::ServerTlsPolicy::MTLSPolicy]
        #     Defines a mechanism to provision peer validation certificates for peer to
        #     peer authentication (Mutual TLS - mTLS). If not specified, client
        #     certificate will not be requested. The connection is treated as TLS and not
        #     mTLS. If `allow_open` and `mtls_policy` are set, server allows both plain
        #     text and mTLS connections.
        class ServerTlsPolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specification of the MTLSPolicy.
          # @!attribute [rw] client_validation_ca
          #   @return [::Array<::Google::Cloud::NetworkSecurity::V1beta1::ValidationCA>]
          #     Defines the mechanism to obtain the Certificate Authority certificate to
          #     validate the client certificate.
          class MTLSPolicy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Request used by the ListServerTlsPolicies method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location from which the ServerTlsPolicies should
        #     be listed, specified in the format `projects/*/locations/{location}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of ServerTlsPolicies to return per call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The value returned by the last `ListServerTlsPoliciesResponse`
        #     Indicates that this is a continuation of a prior
        #     `ListServerTlsPolicies` call, and that the system
        #     should return the next page of data.
        class ListServerTlsPoliciesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response returned by the ListServerTlsPolicies method.
        # @!attribute [rw] server_tls_policies
        #   @return [::Array<::Google::Cloud::NetworkSecurity::V1beta1::ServerTlsPolicy>]
        #     List of ServerTlsPolicy resources.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there might be more results than those appearing in this response, then
        #     `next_page_token` is included. To get the next set of results, call this
        #     method again using the value of `next_page_token` as `page_token`.
        class ListServerTlsPoliciesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request used by the GetServerTlsPolicy method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A name of the ServerTlsPolicy to get. Must be in the format
        #     `projects/*/locations/{location}/serverTlsPolicies/*`.
        class GetServerTlsPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request used by the CreateServerTlsPolicy method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the ServerTlsPolicy. Must be in
        #     the format `projects/*/locations/{location}`.
        # @!attribute [rw] server_tls_policy_id
        #   @return [::String]
        #     Required. Short name of the ServerTlsPolicy resource to be created. This
        #     value should be 1-63 characters long, containing only letters, numbers,
        #     hyphens, and underscores, and should not start with a number. E.g.
        #     "server_mtls_policy".
        # @!attribute [rw] server_tls_policy
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::ServerTlsPolicy]
        #     Required. ServerTlsPolicy resource to be created.
        class CreateServerTlsPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request used by UpdateServerTlsPolicy method.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Field mask is used to specify the fields to be overwritten in the
        #     ServerTlsPolicy resource by the update.  The fields
        #     specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the
        #     mask. If the user does not provide a mask then all fields will be
        #     overwritten.
        # @!attribute [rw] server_tls_policy
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::ServerTlsPolicy]
        #     Required. Updated ServerTlsPolicy resource.
        class UpdateServerTlsPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request used by the DeleteServerTlsPolicy method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A name of the ServerTlsPolicy to delete. Must be in
        #     the format `projects/*/locations/{location}/serverTlsPolicies/*`.
        class DeleteServerTlsPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

