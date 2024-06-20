# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/snooze.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/monitoring/v3/common_pb'


descriptor_data = "\n!google/monitoring/v3/snooze.proto\x12\x14google.monitoring.v3\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a!google/monitoring/v3/common.proto\"\xc5\x02\n\x06Snooze\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12<\n\x08\x63riteria\x18\x03 \x01(\x0b\x32%.google.monitoring.v3.Snooze.CriteriaB\x03\xe0\x41\x02\x12\x39\n\x08interval\x18\x04 \x01(\x0b\x32\".google.monitoring.v3.TimeIntervalB\x03\xe0\x41\x02\x12\x19\n\x0c\x64isplay_name\x18\x05 \x01(\tB\x03\xe0\x41\x02\x1aH\n\x08\x43riteria\x12<\n\x08policies\x18\x01 \x03(\tB*\xfa\x41\'\n%monitoring.googleapis.com/AlertPolicy:J\xea\x41G\n monitoring.googleapis.com/Snooze\x12#projects/{project}/snoozes/{snooze}B\xc6\x01\n\x18\x63om.google.monitoring.v3B\x0bSnoozeProtoP\x01ZAcloud.google.com/go/monitoring/apiv3/v2/monitoringpb;monitoringpb\xaa\x02\x1aGoogle.Cloud.Monitoring.V3\xca\x02\x1aGoogle\\Cloud\\Monitoring\\V3\xea\x02\x1dGoogle::Cloud::Monitoring::V3b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.monitoring.v3.TimeInterval", "google/monitoring/v3/common.proto"],
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
    module Monitoring
      module V3
        Snooze = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Snooze").msgclass
        Snooze::Criteria = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Snooze.Criteria").msgclass
      end
    end
  end
end
