# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/documentai/v1beta3/document_schema.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/documentai/v1beta3/document_schema.proto", :syntax => :proto3) do
    add_message "google.cloud.documentai.v1beta3.DocumentSchema" do
      optional :display_name, :string, 1
      optional :description, :string, 2
      repeated :entity_types, :message, 3, "google.cloud.documentai.v1beta3.DocumentSchema.EntityType"
      optional :metadata, :message, 4, "google.cloud.documentai.v1beta3.DocumentSchema.Metadata"
    end
    add_message "google.cloud.documentai.v1beta3.DocumentSchema.EntityType" do
      optional :display_name, :string, 13
      optional :name, :string, 1
      repeated :base_types, :string, 2
      repeated :properties, :message, 6, "google.cloud.documentai.v1beta3.DocumentSchema.EntityType.Property"
      oneof :value_source do
        optional :enum_values, :message, 14, "google.cloud.documentai.v1beta3.DocumentSchema.EntityType.EnumValues"
      end
    end
    add_message "google.cloud.documentai.v1beta3.DocumentSchema.EntityType.EnumValues" do
      repeated :values, :string, 1
    end
    add_message "google.cloud.documentai.v1beta3.DocumentSchema.EntityType.Property" do
      optional :name, :string, 1
      optional :value_type, :string, 2
      optional :occurrence_type, :enum, 3, "google.cloud.documentai.v1beta3.DocumentSchema.EntityType.Property.OccurrenceType"
    end
    add_enum "google.cloud.documentai.v1beta3.DocumentSchema.EntityType.Property.OccurrenceType" do
      value :OCCURRENCE_TYPE_UNSPECIFIED, 0
      value :OPTIONAL_ONCE, 1
      value :OPTIONAL_MULTIPLE, 2
      value :REQUIRED_ONCE, 3
      value :REQUIRED_MULTIPLE, 4
    end
    add_message "google.cloud.documentai.v1beta3.DocumentSchema.Metadata" do
      optional :document_splitter, :bool, 1
      optional :document_allow_multiple_labels, :bool, 2
      optional :prefixed_naming_on_properties, :bool, 6
      optional :skip_naming_validation, :bool, 7
    end
  end
end

module Google
  module Cloud
    module DocumentAI
      module V1beta3
        DocumentSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.DocumentSchema").msgclass
        DocumentSchema::EntityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.DocumentSchema.EntityType").msgclass
        DocumentSchema::EntityType::EnumValues = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.DocumentSchema.EntityType.EnumValues").msgclass
        DocumentSchema::EntityType::Property = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.DocumentSchema.EntityType.Property").msgclass
        DocumentSchema::EntityType::Property::OccurrenceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.DocumentSchema.EntityType.Property.OccurrenceType").enummodule
        DocumentSchema::Metadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.DocumentSchema.Metadata").msgclass
      end
    end
  end
end