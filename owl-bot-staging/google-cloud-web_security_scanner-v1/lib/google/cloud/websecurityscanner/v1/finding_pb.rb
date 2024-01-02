# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/websecurityscanner/v1/finding.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/websecurityscanner/v1/finding_addon_pb'


descriptor_data = "\n0google/cloud/websecurityscanner/v1/finding.proto\x12\"google.cloud.websecurityscanner.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x36google/cloud/websecurityscanner/v1/finding_addon.proto\"\xec\x07\n\x07\x46inding\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x66inding_type\x18\x02 \x01(\t\x12K\n\x08severity\x18\x11 \x01(\x0e\x32\x34.google.cloud.websecurityscanner.v1.Finding.SeverityB\x03\xe0\x41\x03\x12\x13\n\x0bhttp_method\x18\x03 \x01(\t\x12\x12\n\nfuzzed_url\x18\x04 \x01(\t\x12\x0c\n\x04\x62ody\x18\x05 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x06 \x01(\t\x12\x18\n\x10reproduction_url\x18\x07 \x01(\t\x12\x11\n\tframe_url\x18\x08 \x01(\t\x12\x11\n\tfinal_url\x18\t \x01(\t\x12\x13\n\x0btracking_id\x18\n \x01(\t\x12\x36\n\x04\x66orm\x18\x10 \x01(\x0b\x32(.google.cloud.websecurityscanner.v1.Form\x12M\n\x10outdated_library\x18\x0b \x01(\x0b\x32\x33.google.cloud.websecurityscanner.v1.OutdatedLibrary\x12Q\n\x12violating_resource\x18\x0c \x01(\x0b\x32\x35.google.cloud.websecurityscanner.v1.ViolatingResource\x12Q\n\x12vulnerable_headers\x18\x0f \x01(\x0b\x32\x35.google.cloud.websecurityscanner.v1.VulnerableHeaders\x12W\n\x15vulnerable_parameters\x18\r \x01(\x0b\x32\x38.google.cloud.websecurityscanner.v1.VulnerableParameters\x12\x34\n\x03xss\x18\x0e \x01(\x0b\x32\'.google.cloud.websecurityscanner.v1.Xss\x12\x39\n\x03xxe\x18\x12 \x01(\x0b\x32\'.google.cloud.websecurityscanner.v1.XxeB\x03\xe0\x41\x03\"Q\n\x08Severity\x12\x18\n\x14SEVERITY_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43RITICAL\x10\x01\x12\x08\n\x04HIGH\x10\x02\x12\n\n\x06MEDIUM\x10\x03\x12\x07\n\x03LOW\x10\x04:\x84\x01\xea\x41\x80\x01\n)websecurityscanner.googleapis.com/Finding\x12Sprojects/{project}/scanConfigs/{scan_config}/scanRuns/{scan_run}/findings/{finding}B\x82\x02\n&com.google.cloud.websecurityscanner.v1B\x0c\x46indingProtoP\x01ZVcloud.google.com/go/websecurityscanner/apiv1/websecurityscannerpb;websecurityscannerpb\xaa\x02\"Google.Cloud.WebSecurityScanner.V1\xca\x02\"Google\\Cloud\\WebSecurityScanner\\V1\xea\x02%Google::Cloud::WebSecurityScanner::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.websecurityscanner.v1.Form", "google/cloud/websecurityscanner/v1/finding_addon.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module WebSecurityScanner
      module V1
        Finding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.Finding").msgclass
        Finding::Severity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.Finding.Severity").enummodule
      end
    end
  end
end
