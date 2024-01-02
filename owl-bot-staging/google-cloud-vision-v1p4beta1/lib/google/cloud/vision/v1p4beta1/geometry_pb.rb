# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/vision/v1p4beta1/geometry.proto

require 'google/protobuf'


descriptor_data = "\n,google/cloud/vision/v1p4beta1/geometry.proto\x12\x1dgoogle.cloud.vision.v1p4beta1\"\x1e\n\x06Vertex\x12\t\n\x01x\x18\x01 \x01(\x05\x12\t\n\x01y\x18\x02 \x01(\x05\"(\n\x10NormalizedVertex\x12\t\n\x01x\x18\x01 \x01(\x02\x12\t\n\x01y\x18\x02 \x01(\x02\"\x95\x01\n\x0c\x42oundingPoly\x12\x37\n\x08vertices\x18\x01 \x03(\x0b\x32%.google.cloud.vision.v1p4beta1.Vertex\x12L\n\x13normalized_vertices\x18\x02 \x03(\x0b\x32/.google.cloud.vision.v1p4beta1.NormalizedVertex\"+\n\x08Position\x12\t\n\x01x\x18\x01 \x01(\x02\x12\t\n\x01y\x18\x02 \x01(\x02\x12\t\n\x01z\x18\x03 \x01(\x02\x42y\n!com.google.cloud.vision.v1p4beta1B\rGeometryProtoP\x01Z9cloud.google.com/go/vision/apiv1p4beta1/visionpb;visionpb\xf8\x01\x01\xa2\x02\x04GCVNb\x06proto3"

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
    module Vision
      module V1p4beta1
        Vertex = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.Vertex").msgclass
        NormalizedVertex = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.NormalizedVertex").msgclass
        BoundingPoly = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.BoundingPoly").msgclass
        Position = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.Position").msgclass
      end
    end
  end
end
