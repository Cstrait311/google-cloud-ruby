# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/alloydb/v1beta/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/dayofweek_pb'
require 'google/type/timeofday_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/alloydb/v1beta/resources.proto", :syntax => :proto3) do
    add_message "google.cloud.alloydb.v1beta.UserPassword" do
      optional :user, :string, 1
      optional :password, :string, 2
    end
    add_message "google.cloud.alloydb.v1beta.MigrationSource" do
      optional :host_port, :string, 1
      optional :reference_id, :string, 2
      optional :source_type, :enum, 3, "google.cloud.alloydb.v1beta.MigrationSource.MigrationSourceType"
    end
    add_enum "google.cloud.alloydb.v1beta.MigrationSource.MigrationSourceType" do
      value :MIGRATION_SOURCE_TYPE_UNSPECIFIED, 0
      value :DMS, 1
    end
    add_message "google.cloud.alloydb.v1beta.EncryptionConfig" do
      optional :kms_key_name, :string, 1
    end
    add_message "google.cloud.alloydb.v1beta.EncryptionInfo" do
      optional :encryption_type, :enum, 1, "google.cloud.alloydb.v1beta.EncryptionInfo.Type"
      repeated :kms_key_versions, :string, 2
    end
    add_enum "google.cloud.alloydb.v1beta.EncryptionInfo.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :GOOGLE_DEFAULT_ENCRYPTION, 1
      value :CUSTOMER_MANAGED_ENCRYPTION, 2
    end
    add_message "google.cloud.alloydb.v1beta.SslConfig" do
      optional :ssl_mode, :enum, 1, "google.cloud.alloydb.v1beta.SslConfig.SslMode"
      optional :ca_source, :enum, 2, "google.cloud.alloydb.v1beta.SslConfig.CaSource"
    end
    add_enum "google.cloud.alloydb.v1beta.SslConfig.SslMode" do
      value :SSL_MODE_UNSPECIFIED, 0
      value :SSL_MODE_ALLOW, 1
      value :SSL_MODE_REQUIRE, 2
      value :SSL_MODE_VERIFY_CA, 3
    end
    add_enum "google.cloud.alloydb.v1beta.SslConfig.CaSource" do
      value :CA_SOURCE_UNSPECIFIED, 0
      value :CA_SOURCE_MANAGED, 1
    end
    add_message "google.cloud.alloydb.v1beta.AutomatedBackupPolicy" do
      proto3_optional :enabled, :bool, 1
      optional :backup_window, :message, 3, "google.protobuf.Duration"
      optional :encryption_config, :message, 8, "google.cloud.alloydb.v1beta.EncryptionConfig"
      optional :location, :string, 6
      map :labels, :string, :string, 7
      oneof :schedule do
        optional :weekly_schedule, :message, 2, "google.cloud.alloydb.v1beta.AutomatedBackupPolicy.WeeklySchedule"
      end
      oneof :retention do
        optional :time_based_retention, :message, 4, "google.cloud.alloydb.v1beta.AutomatedBackupPolicy.TimeBasedRetention"
        optional :quantity_based_retention, :message, 5, "google.cloud.alloydb.v1beta.AutomatedBackupPolicy.QuantityBasedRetention"
      end
    end
    add_message "google.cloud.alloydb.v1beta.AutomatedBackupPolicy.WeeklySchedule" do
      repeated :start_times, :message, 1, "google.type.TimeOfDay"
      repeated :days_of_week, :enum, 2, "google.type.DayOfWeek"
    end
    add_message "google.cloud.alloydb.v1beta.AutomatedBackupPolicy.TimeBasedRetention" do
      optional :retention_period, :message, 1, "google.protobuf.Duration"
    end
    add_message "google.cloud.alloydb.v1beta.AutomatedBackupPolicy.QuantityBasedRetention" do
      optional :count, :int32, 1
    end
    add_message "google.cloud.alloydb.v1beta.ContinuousBackupConfig" do
      proto3_optional :enabled, :bool, 1
      optional :recovery_window_days, :int32, 4
      optional :encryption_config, :message, 3, "google.cloud.alloydb.v1beta.EncryptionConfig"
    end
    add_message "google.cloud.alloydb.v1beta.ContinuousBackupInfo" do
      optional :encryption_info, :message, 1, "google.cloud.alloydb.v1beta.EncryptionInfo"
      optional :enabled_time, :message, 2, "google.protobuf.Timestamp"
      repeated :schedule, :enum, 3, "google.type.DayOfWeek"
    end
    add_message "google.cloud.alloydb.v1beta.BackupSource" do
      optional :backup_uid, :string, 2
      optional :backup_name, :string, 1
    end
    add_message "google.cloud.alloydb.v1beta.ContinuousBackupSource" do
      optional :cluster, :string, 1
      optional :point_in_time, :message, 2, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.alloydb.v1beta.Cluster" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :uid, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
      optional :delete_time, :message, 6, "google.protobuf.Timestamp"
      map :labels, :string, :string, 7
      optional :state, :enum, 8, "google.cloud.alloydb.v1beta.Cluster.State"
      optional :cluster_type, :enum, 24, "google.cloud.alloydb.v1beta.Cluster.ClusterType"
      optional :database_version, :enum, 9, "google.cloud.alloydb.v1beta.DatabaseVersion"
      optional :network, :string, 10
      optional :etag, :string, 11
      map :annotations, :string, :string, 12
      optional :reconciling, :bool, 13
      optional :initial_user, :message, 14, "google.cloud.alloydb.v1beta.UserPassword"
      optional :automated_backup_policy, :message, 17, "google.cloud.alloydb.v1beta.AutomatedBackupPolicy"
      optional :ssl_config, :message, 18, "google.cloud.alloydb.v1beta.SslConfig"
      optional :encryption_config, :message, 19, "google.cloud.alloydb.v1beta.EncryptionConfig"
      optional :encryption_info, :message, 20, "google.cloud.alloydb.v1beta.EncryptionInfo"
      optional :continuous_backup_config, :message, 27, "google.cloud.alloydb.v1beta.ContinuousBackupConfig"
      optional :continuous_backup_info, :message, 28, "google.cloud.alloydb.v1beta.ContinuousBackupInfo"
      optional :secondary_config, :message, 22, "google.cloud.alloydb.v1beta.Cluster.SecondaryConfig"
      optional :primary_config, :message, 23, "google.cloud.alloydb.v1beta.Cluster.PrimaryConfig"
      oneof :source do
        optional :backup_source, :message, 15, "google.cloud.alloydb.v1beta.BackupSource"
        optional :migration_source, :message, 16, "google.cloud.alloydb.v1beta.MigrationSource"
      end
    end
    add_message "google.cloud.alloydb.v1beta.Cluster.SecondaryConfig" do
      optional :primary_cluster_name, :string, 1
    end
    add_message "google.cloud.alloydb.v1beta.Cluster.PrimaryConfig" do
      repeated :secondary_cluster_names, :string, 1
    end
    add_enum "google.cloud.alloydb.v1beta.Cluster.State" do
      value :STATE_UNSPECIFIED, 0
      value :READY, 1
      value :STOPPED, 2
      value :EMPTY, 3
      value :CREATING, 4
      value :DELETING, 5
      value :FAILED, 6
      value :BOOTSTRAPPING, 7
      value :MAINTENANCE, 8
      value :PROMOTING, 9
    end
    add_enum "google.cloud.alloydb.v1beta.Cluster.ClusterType" do
      value :CLUSTER_TYPE_UNSPECIFIED, 0
      value :PRIMARY, 1
      value :SECONDARY, 2
    end
    add_message "google.cloud.alloydb.v1beta.Instance" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :uid, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
      optional :delete_time, :message, 6, "google.protobuf.Timestamp"
      map :labels, :string, :string, 7
      optional :state, :enum, 8, "google.cloud.alloydb.v1beta.Instance.State"
      optional :instance_type, :enum, 9, "google.cloud.alloydb.v1beta.Instance.InstanceType"
      optional :machine_config, :message, 10, "google.cloud.alloydb.v1beta.Instance.MachineConfig"
      optional :availability_type, :enum, 11, "google.cloud.alloydb.v1beta.Instance.AvailabilityType"
      optional :gce_zone, :string, 12
      map :database_flags, :string, :string, 13
      optional :writable_node, :message, 19, "google.cloud.alloydb.v1beta.Instance.Node"
      repeated :nodes, :message, 20, "google.cloud.alloydb.v1beta.Instance.Node"
      optional :query_insights_config, :message, 21, "google.cloud.alloydb.v1beta.Instance.QueryInsightsInstanceConfig"
      optional :read_pool_config, :message, 14, "google.cloud.alloydb.v1beta.Instance.ReadPoolConfig"
      optional :ip_address, :string, 15
      optional :reconciling, :bool, 16
      optional :etag, :string, 17
      map :annotations, :string, :string, 18
    end
    add_message "google.cloud.alloydb.v1beta.Instance.MachineConfig" do
      optional :cpu_count, :int32, 1
    end
    add_message "google.cloud.alloydb.v1beta.Instance.Node" do
      optional :zone_id, :string, 1
      optional :id, :string, 2
      optional :ip, :string, 3
      optional :state, :string, 4
    end
    add_message "google.cloud.alloydb.v1beta.Instance.QueryInsightsInstanceConfig" do
      proto3_optional :record_application_tags, :bool, 2
      proto3_optional :record_client_address, :bool, 3
      optional :query_string_length, :uint32, 4
      proto3_optional :query_plans_per_minute, :uint32, 5
    end
    add_message "google.cloud.alloydb.v1beta.Instance.ReadPoolConfig" do
      optional :node_count, :int32, 1
    end
    add_enum "google.cloud.alloydb.v1beta.Instance.State" do
      value :STATE_UNSPECIFIED, 0
      value :READY, 1
      value :STOPPED, 2
      value :CREATING, 3
      value :DELETING, 4
      value :MAINTENANCE, 5
      value :FAILED, 6
      value :BOOTSTRAPPING, 8
      value :PROMOTING, 9
    end
    add_enum "google.cloud.alloydb.v1beta.Instance.InstanceType" do
      value :INSTANCE_TYPE_UNSPECIFIED, 0
      value :PRIMARY, 1
      value :READ_POOL, 2
      value :SECONDARY, 3
    end
    add_enum "google.cloud.alloydb.v1beta.Instance.AvailabilityType" do
      value :AVAILABILITY_TYPE_UNSPECIFIED, 0
      value :ZONAL, 1
      value :REGIONAL, 2
    end
    add_message "google.cloud.alloydb.v1beta.ConnectionInfo" do
      optional :name, :string, 1
      optional :ip_address, :string, 2
      repeated :pem_certificate_chain, :string, 3
      optional :instance_uid, :string, 4
    end
    add_message "google.cloud.alloydb.v1beta.Backup" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :uid, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
      optional :delete_time, :message, 15, "google.protobuf.Timestamp"
      map :labels, :string, :string, 6
      optional :state, :enum, 7, "google.cloud.alloydb.v1beta.Backup.State"
      optional :type, :enum, 8, "google.cloud.alloydb.v1beta.Backup.Type"
      optional :description, :string, 9
      optional :cluster_uid, :string, 18
      optional :cluster_name, :string, 10
      optional :reconciling, :bool, 11
      optional :encryption_config, :message, 12, "google.cloud.alloydb.v1beta.EncryptionConfig"
      optional :encryption_info, :message, 13, "google.cloud.alloydb.v1beta.EncryptionInfo"
      optional :etag, :string, 14
      map :annotations, :string, :string, 16
      optional :size_bytes, :int64, 17
      optional :expiry_time, :message, 19, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.alloydb.v1beta.Backup.State" do
      value :STATE_UNSPECIFIED, 0
      value :READY, 1
      value :CREATING, 2
      value :FAILED, 3
      value :DELETING, 4
    end
    add_enum "google.cloud.alloydb.v1beta.Backup.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :ON_DEMAND, 1
      value :AUTOMATED, 2
      value :CONTINUOUS, 3
    end
    add_message "google.cloud.alloydb.v1beta.SupportedDatabaseFlag" do
      optional :name, :string, 1
      optional :flag_name, :string, 2
      optional :value_type, :enum, 3, "google.cloud.alloydb.v1beta.SupportedDatabaseFlag.ValueType"
      optional :accepts_multiple_values, :bool, 4
      repeated :supported_db_versions, :enum, 5, "google.cloud.alloydb.v1beta.DatabaseVersion"
      optional :requires_db_restart, :bool, 6
      oneof :restrictions do
        optional :string_restrictions, :message, 7, "google.cloud.alloydb.v1beta.SupportedDatabaseFlag.StringRestrictions"
        optional :integer_restrictions, :message, 8, "google.cloud.alloydb.v1beta.SupportedDatabaseFlag.IntegerRestrictions"
      end
    end
    add_message "google.cloud.alloydb.v1beta.SupportedDatabaseFlag.StringRestrictions" do
      repeated :allowed_values, :string, 1
    end
    add_message "google.cloud.alloydb.v1beta.SupportedDatabaseFlag.IntegerRestrictions" do
      optional :min_value, :message, 1, "google.protobuf.Int64Value"
      optional :max_value, :message, 2, "google.protobuf.Int64Value"
    end
    add_enum "google.cloud.alloydb.v1beta.SupportedDatabaseFlag.ValueType" do
      value :VALUE_TYPE_UNSPECIFIED, 0
      value :STRING, 1
      value :INTEGER, 2
      value :FLOAT, 3
      value :NONE, 4
    end
    add_enum "google.cloud.alloydb.v1beta.DatabaseVersion" do
      value :DATABASE_VERSION_UNSPECIFIED, 0
      value :POSTGRES_13, 1
      value :POSTGRES_14, 2
    end
    add_enum "google.cloud.alloydb.v1beta.InstanceView" do
      value :INSTANCE_VIEW_UNSPECIFIED, 0
      value :INSTANCE_VIEW_BASIC, 1
      value :INSTANCE_VIEW_FULL, 2
    end
  end
end

module Google
  module Cloud
    module AlloyDB
      module V1beta
        UserPassword = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.UserPassword").msgclass
        MigrationSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.MigrationSource").msgclass
        MigrationSource::MigrationSourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.MigrationSource.MigrationSourceType").enummodule
        EncryptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.EncryptionConfig").msgclass
        EncryptionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.EncryptionInfo").msgclass
        EncryptionInfo::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.EncryptionInfo.Type").enummodule
        SslConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.SslConfig").msgclass
        SslConfig::SslMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.SslConfig.SslMode").enummodule
        SslConfig::CaSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.SslConfig.CaSource").enummodule
        AutomatedBackupPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.AutomatedBackupPolicy").msgclass
        AutomatedBackupPolicy::WeeklySchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.AutomatedBackupPolicy.WeeklySchedule").msgclass
        AutomatedBackupPolicy::TimeBasedRetention = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.AutomatedBackupPolicy.TimeBasedRetention").msgclass
        AutomatedBackupPolicy::QuantityBasedRetention = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.AutomatedBackupPolicy.QuantityBasedRetention").msgclass
        ContinuousBackupConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ContinuousBackupConfig").msgclass
        ContinuousBackupInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ContinuousBackupInfo").msgclass
        BackupSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.BackupSource").msgclass
        ContinuousBackupSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ContinuousBackupSource").msgclass
        Cluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Cluster").msgclass
        Cluster::SecondaryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Cluster.SecondaryConfig").msgclass
        Cluster::PrimaryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Cluster.PrimaryConfig").msgclass
        Cluster::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Cluster.State").enummodule
        Cluster::ClusterType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Cluster.ClusterType").enummodule
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Instance").msgclass
        Instance::MachineConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Instance.MachineConfig").msgclass
        Instance::Node = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Instance.Node").msgclass
        Instance::QueryInsightsInstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Instance.QueryInsightsInstanceConfig").msgclass
        Instance::ReadPoolConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Instance.ReadPoolConfig").msgclass
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Instance.State").enummodule
        Instance::InstanceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Instance.InstanceType").enummodule
        Instance::AvailabilityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Instance.AvailabilityType").enummodule
        ConnectionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ConnectionInfo").msgclass
        Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Backup").msgclass
        Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Backup.State").enummodule
        Backup::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.Backup.Type").enummodule
        SupportedDatabaseFlag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.SupportedDatabaseFlag").msgclass
        SupportedDatabaseFlag::StringRestrictions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.SupportedDatabaseFlag.StringRestrictions").msgclass
        SupportedDatabaseFlag::IntegerRestrictions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.SupportedDatabaseFlag.IntegerRestrictions").msgclass
        SupportedDatabaseFlag::ValueType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.SupportedDatabaseFlag.ValueType").enummodule
        DatabaseVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.DatabaseVersion").enummodule
        InstanceView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.InstanceView").enummodule
      end
    end
  end
end