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
        # Specification of the GRPC Endpoint.
        # @!attribute [rw] target_uri
        #   @return [::String]
        #     Required. The target URI of the gRPC endpoint. Only UDS path is supported,
        #     and should start with "unix:".
        class GrpcEndpoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specification of ValidationCA. Defines the mechanism to obtain the
        # Certificate Authority certificate to validate the peer certificate.
        # @!attribute [rw] grpc_endpoint
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::GrpcEndpoint]
        #     gRPC specific configuration to access the gRPC server to
        #     obtain the CA certificate.
        # @!attribute [rw] certificate_provider_instance
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::CertificateProviderInstance]
        #     The certificate provider instance specification that will be passed to
        #     the data plane, which will be used to load necessary credential
        #     information.
        class ValidationCA
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specification of a TLS certificate provider instance. Workloads may have one
        # or more CertificateProvider instances (plugins) and one of them is enabled
        # and configured by specifying this message. Workloads use the values from this
        # message to locate and load the CertificateProvider instance configuration.
        # @!attribute [rw] plugin_instance
        #   @return [::String]
        #     Required. Plugin instance name, used to locate and load CertificateProvider
        #     instance configuration. Set to "google_cloud_private_spiffe" to use
        #     Certificate Authority Service certificate provider instance.
        class CertificateProviderInstance
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specification of certificate provider. Defines the mechanism to obtain the
        # certificate and private key for peer to peer authentication.
        # @!attribute [rw] grpc_endpoint
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::GrpcEndpoint]
        #     gRPC specific configuration to access the gRPC server to
        #     obtain the cert and private key.
        # @!attribute [rw] certificate_provider_instance
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::CertificateProviderInstance]
        #     The certificate provider instance specification that will be passed to
        #     the data plane, which will be used to load necessary credential
        #     information.
        class CertificateProvider
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

