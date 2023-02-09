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
    module OsConfig
      module V1alpha
        # An OS policy defines the desired state configuration for a VM.
        # @!attribute [rw] id
        #   @return [::String]
        #     Required. The id of the OS policy with the following restrictions:
        #
        #     * Must contain only lowercase letters, numbers, and hyphens.
        #     * Must start with a letter.
        #     * Must be between 1-63 characters.
        #     * Must end with a number or a letter.
        #     * Must be unique within the assignment.
        # @!attribute [rw] description
        #   @return [::String]
        #     Policy description.
        #     Length of the description is limited to 1024 characters.
        # @!attribute [rw] mode
        #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Mode]
        #     Required. Policy mode
        # @!attribute [rw] resource_groups
        #   @return [::Array<::Google::Cloud::OsConfig::V1alpha::OSPolicy::ResourceGroup>]
        #     Required. List of resource groups for the policy.
        #     For a particular VM, resource groups are evaluated in the order specified
        #     and the first resource group that is applicable is selected and the rest
        #     are ignored.
        #
        #     If none of the resource groups are applicable for a VM, the VM is
        #     considered to be non-compliant w.r.t this policy. This behavior can be
        #     toggled by the flag `allow_no_resource_group_match`
        # @!attribute [rw] allow_no_resource_group_match
        #   @return [::Boolean]
        #     This flag determines the OS policy compliance status when none of the
        #     resource groups within the policy are applicable for a VM. Set this value
        #     to `true` if the policy needs to be reported as compliant even if the
        #     policy has nothing to validate or enforce.
        class OSPolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Filtering criteria to select VMs based on OS details.
          # @!attribute [rw] os_short_name
          #   @return [::String]
          #     This should match OS short name emitted by the OS inventory agent.
          #     An empty value matches any OS.
          # @!attribute [rw] os_version
          #   @return [::String]
          #     This value should match the version emitted by the OS inventory
          #     agent.
          #     Prefix matches are supported if asterisk(*) is provided as the
          #     last character. For example, to match all versions with a major
          #     version of `7`, specify the following value for this field `7.*`
          class OSFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Filtering criteria to select VMs based on inventory details.
          # @!attribute [rw] os_short_name
          #   @return [::String]
          #     Required. The OS short name
          # @!attribute [rw] os_version
          #   @return [::String]
          #     The OS version
          #
          #     Prefix matches are supported if asterisk(*) is provided as the
          #     last character. For example, to match all versions with a major
          #     version of `7`, specify the following value for this field `7.*`
          #
          #     An empty string matches all OS versions.
          class InventoryFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # An OS policy resource is used to define the desired state configuration
          # and provides a specific functionality like installing/removing packages,
          # executing a script etc.
          #
          # The system ensures that resources are always in their desired state by
          # taking necessary actions if they have drifted from their desired state.
          # @!attribute [rw] id
          #   @return [::String]
          #     Required. The id of the resource with the following restrictions:
          #
          #     * Must contain only lowercase letters, numbers, and hyphens.
          #     * Must start with a letter.
          #     * Must be between 1-63 characters.
          #     * Must end with a number or a letter.
          #     * Must be unique within the OS policy.
          # @!attribute [rw] pkg
          #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::PackageResource]
          #     Package resource
          # @!attribute [rw] repository
          #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::RepositoryResource]
          #     Package repository resource
          # @!attribute [rw] exec
          #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::ExecResource]
          #     Exec resource
          # @!attribute [rw] file
          #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::FileResource]
          #     File resource
          class Resource
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A remote or local file.
            # @!attribute [rw] remote
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::File::Remote]
            #     A generic remote file.
            # @!attribute [rw] gcs
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::File::Gcs]
            #     A Cloud Storage object.
            # @!attribute [rw] local_path
            #   @return [::String]
            #     A local path within the VM to use.
            # @!attribute [rw] allow_insecure
            #   @return [::Boolean]
            #     Defaults to false. When false, files are subject to validations
            #     based on the file type:
            #
            #     Remote: A checksum must be specified.
            #     Cloud Storage: An object generation number must be specified.
            class File
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Specifies a file available via some URI.
              # @!attribute [rw] uri
              #   @return [::String]
              #     Required. URI from which to fetch the object. It should contain both the
              #     protocol and path following the format `{protocol}://{location}`.
              # @!attribute [rw] sha256_checksum
              #   @return [::String]
              #     SHA256 checksum of the remote file.
              class Remote
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Specifies a file available as a Cloud Storage Object.
              # @!attribute [rw] bucket
              #   @return [::String]
              #     Required. Bucket of the Cloud Storage object.
              # @!attribute [rw] object
              #   @return [::String]
              #     Required. Name of the Cloud Storage object.
              # @!attribute [rw] generation
              #   @return [::Integer]
              #     Generation number of the Cloud Storage object.
              class Gcs
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # A resource that manages a system package.
            # @!attribute [rw] desired_state
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::PackageResource::DesiredState]
            #     Required. The desired state the agent should maintain for this package.
            # @!attribute [rw] apt
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::PackageResource::APT]
            #     A package managed by Apt.
            # @!attribute [rw] deb
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::PackageResource::Deb]
            #     A deb package file.
            # @!attribute [rw] yum
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::PackageResource::YUM]
            #     A package managed by YUM.
            # @!attribute [rw] zypper
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::PackageResource::Zypper]
            #     A package managed by Zypper.
            # @!attribute [rw] rpm
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::PackageResource::RPM]
            #     An rpm package file.
            # @!attribute [rw] googet
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::PackageResource::GooGet]
            #     A package managed by GooGet.
            # @!attribute [rw] msi
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::PackageResource::MSI]
            #     An MSI package.
            class PackageResource
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # A deb package file. dpkg packages only support INSTALLED state.
              # @!attribute [rw] source
              #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::File]
              #     Required. A deb package.
              # @!attribute [rw] pull_deps
              #   @return [::Boolean]
              #     Whether dependencies should also be installed.
              #     - install when false: `dpkg -i package`
              #     - install when true: `apt-get update && apt-get -y install
              #     package.deb`
              class Deb
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # A package managed by APT.
              # - install: `apt-get update && apt-get -y install [name]`
              # - remove: `apt-get -y remove [name]`
              # @!attribute [rw] name
              #   @return [::String]
              #     Required. Package name.
              class APT
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # An RPM package file. RPM packages only support INSTALLED state.
              # @!attribute [rw] source
              #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::File]
              #     Required. An rpm package.
              # @!attribute [rw] pull_deps
              #   @return [::Boolean]
              #     Whether dependencies should also be installed.
              #     - install when false: `rpm --upgrade --replacepkgs package.rpm`
              #     - install when true: `yum -y install package.rpm` or
              #     `zypper -y install package.rpm`
              class RPM
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # A package managed by YUM.
              # - install: `yum -y install package`
              # - remove: `yum -y remove package`
              # @!attribute [rw] name
              #   @return [::String]
              #     Required. Package name.
              class YUM
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # A package managed by Zypper.
              # - install: `zypper -y install package`
              # - remove: `zypper -y rm package`
              # @!attribute [rw] name
              #   @return [::String]
              #     Required. Package name.
              class Zypper
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # A package managed by GooGet.
              # - install: `googet -noconfirm install package`
              # - remove: `googet -noconfirm remove package`
              # @!attribute [rw] name
              #   @return [::String]
              #     Required. Package name.
              class GooGet
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # An MSI package. MSI packages only support INSTALLED state.
              # @!attribute [rw] source
              #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::File]
              #     Required. The MSI package.
              # @!attribute [rw] properties
              #   @return [::Array<::String>]
              #     Additional properties to use during installation.
              #     This should be in the format of Property=Setting.
              #     Appended to the defaults of `ACTION=INSTALL
              #     REBOOT=ReallySuppress`.
              class MSI
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # The desired state that the OS Config agent maintains on the VM.
              module DesiredState

                # Unspecified is invalid.
                DESIRED_STATE_UNSPECIFIED = 0

                # Ensure that the package is installed.
                INSTALLED = 1

                # The agent ensures that the package is not installed and
                # uninstalls it if detected.
                REMOVED = 2
              end
            end

            # A resource that manages a package repository.
            # @!attribute [rw] apt
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::RepositoryResource::AptRepository]
            #     An Apt Repository.
            # @!attribute [rw] yum
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::RepositoryResource::YumRepository]
            #     A Yum Repository.
            # @!attribute [rw] zypper
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::RepositoryResource::ZypperRepository]
            #     A Zypper Repository.
            # @!attribute [rw] goo
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::RepositoryResource::GooRepository]
            #     A Goo Repository.
            class RepositoryResource
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Represents a single apt package repository. These will be added to
              # a repo file that will be managed at
              # `/etc/apt/sources.list.d/google_osconfig.list`.
              # @!attribute [rw] archive_type
              #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::RepositoryResource::AptRepository::ArchiveType]
              #     Required. Type of archive files in this repository.
              # @!attribute [rw] uri
              #   @return [::String]
              #     Required. URI for this repository.
              # @!attribute [rw] distribution
              #   @return [::String]
              #     Required. Distribution of this repository.
              # @!attribute [rw] components
              #   @return [::Array<::String>]
              #     Required. List of components for this repository. Must contain at least one
              #     item.
              # @!attribute [rw] gpg_key
              #   @return [::String]
              #     URI of the key file for this repository. The agent maintains a
              #     keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
              class AptRepository
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods

                # Type of archive.
                module ArchiveType

                  # Unspecified is invalid.
                  ARCHIVE_TYPE_UNSPECIFIED = 0

                  # Deb indicates that the archive contains binary files.
                  DEB = 1

                  # Deb-src indicates that the archive contains source files.
                  DEB_SRC = 2
                end
              end

              # Represents a single yum package repository. These are added to a
              # repo file that is managed at
              # `/etc/yum.repos.d/google_osconfig.repo`.
              # @!attribute [rw] id
              #   @return [::String]
              #     Required. A one word, unique name for this repository. This is  the `repo
              #     id` in the yum config file and also the `display_name` if
              #     `display_name` is omitted. This id is also used as the unique
              #     identifier when checking for resource conflicts.
              # @!attribute [rw] display_name
              #   @return [::String]
              #     The display name of the repository.
              # @!attribute [rw] base_url
              #   @return [::String]
              #     Required. The location of the repository directory.
              # @!attribute [rw] gpg_keys
              #   @return [::Array<::String>]
              #     URIs of GPG keys.
              class YumRepository
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Represents a single zypper package repository. These are added to a
              # repo file that is managed at
              # `/etc/zypp/repos.d/google_osconfig.repo`.
              # @!attribute [rw] id
              #   @return [::String]
              #     Required. A one word, unique name for this repository. This is the `repo
              #     id` in the zypper config file and also the `display_name` if
              #     `display_name` is omitted. This id is also used as the unique
              #     identifier when checking for GuestPolicy conflicts.
              # @!attribute [rw] display_name
              #   @return [::String]
              #     The display name of the repository.
              # @!attribute [rw] base_url
              #   @return [::String]
              #     Required. The location of the repository directory.
              # @!attribute [rw] gpg_keys
              #   @return [::Array<::String>]
              #     URIs of GPG keys.
              class ZypperRepository
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Represents a Goo package repository. These are added to a repo file
              # that is managed at
              # `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
              # @!attribute [rw] name
              #   @return [::String]
              #     Required. The name of the repository.
              # @!attribute [rw] url
              #   @return [::String]
              #     Required. The url of the repository.
              class GooRepository
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # A resource that allows executing scripts on the VM.
            #
            # The `ExecResource` has 2 stages: `validate` and `enforce` and both stages
            # accept a script as an argument to execute.
            #
            # When the `ExecResource` is applied by the agent, it first executes the
            # script in the `validate` stage. The `validate` stage can signal that the
            # `ExecResource` is already in the desired state by returning an exit code
            # of `100`. If the `ExecResource` is not in the desired state, it should
            # return an exit code of `101`. Any other exit code returned by this stage
            # is considered an error.
            #
            # If the `ExecResource` is not in the desired state based on the exit code
            # from the `validate` stage, the agent proceeds to execute the script from
            # the `enforce` stage. If the `ExecResource` is already in the desired
            # state, the `enforce` stage will not be run.
            # Similar to `validate` stage, the `enforce` stage should return an exit
            # code of `100` to indicate that the resource in now in its desired state.
            # Any other exit code is considered an error.
            #
            # NOTE: An exit code of `100` was chosen over `0` (and `101` vs `1`) to
            # have an explicit indicator of `in desired state`, `not in desired state`
            # and errors. Because, for example, Powershell will always return an exit
            # code of `0` unless an `exit` statement is provided in the script. So, for
            # reasons of consistency and being explicit, exit codes `100` and `101`
            # were chosen.
            # @!attribute [rw] validate
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::ExecResource::Exec]
            #     Required. What to run to validate this resource is in the desired state.
            #     An exit code of 100 indicates "in desired state", and exit code of 101
            #     indicates "not in desired state". Any other exit code indicates a
            #     failure running validate.
            # @!attribute [rw] enforce
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::ExecResource::Exec]
            #     What to run to bring this resource into the desired state.
            #     An exit code of 100 indicates "success", any other exit code indicates
            #     a failure running enforce.
            class ExecResource
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # A file or script to execute.
              # @!attribute [rw] file
              #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::File]
              #     A remote or local file.
              # @!attribute [rw] script
              #   @return [::String]
              #     An inline script.
              #     The size of the script is limited to 1024 characters.
              # @!attribute [rw] args
              #   @return [::Array<::String>]
              #     Optional arguments to pass to the source during execution.
              # @!attribute [rw] interpreter
              #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::ExecResource::Exec::Interpreter]
              #     Required. The script interpreter to use.
              # @!attribute [rw] output_file_path
              #   @return [::String]
              #     Only recorded for enforce Exec.
              #     Path to an output file (that is created by this Exec) whose
              #     content will be recorded in OSPolicyResourceCompliance after a
              #     successful run. Absence or failure to read this file will result in
              #     this ExecResource being non-compliant. Output file size is limited to
              #     100K bytes.
              class Exec
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods

                # The interpreter to use.
                module Interpreter

                  # Invalid value, the request will return validation error.
                  INTERPRETER_UNSPECIFIED = 0

                  # If an interpreter is not specified, the
                  # source is executed directly. This execution, without an
                  # interpreter, only succeeds for executables and scripts that have <a
                  # href="https://en.wikipedia.org/wiki/Shebang_(Unix)"
                  # class="external">shebang lines</a>.
                  NONE = 1

                  # Indicates that the script runs with `/bin/sh` on Linux and
                  # `cmd.exe` on Windows.
                  SHELL = 2

                  # Indicates that the script runs with PowerShell.
                  POWERSHELL = 3
                end
              end
            end

            # A resource that manages the state of a file.
            # @!attribute [rw] file
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::File]
            #     A remote or local source.
            # @!attribute [rw] content
            #   @return [::String]
            #     A a file with this content.
            #     The size of the content is limited to 1024 characters.
            # @!attribute [rw] path
            #   @return [::String]
            #     Required. The absolute path of the file within the VM.
            # @!attribute [rw] state
            #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource::FileResource::DesiredState]
            #     Required. Desired state of the file.
            # @!attribute [rw] permissions
            #   @return [::String]
            #     Consists of three octal digits which represent, in
            #     order, the permissions of the owner, group, and other users for the
            #     file (similarly to the numeric mode used in the linux chmod
            #     utility). Each digit represents a three bit number with the 4 bit
            #     corresponding to the read permissions, the 2 bit corresponds to the
            #     write bit, and the one bit corresponds to the execute permission.
            #     Default behavior is 755.
            #
            #     Below are some examples of permissions and their associated values:
            #     read, write, and execute: 7
            #     read and execute: 5
            #     read and write: 6
            #     read only: 4
            class FileResource
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Desired state of the file.
              module DesiredState

                # Unspecified is invalid.
                DESIRED_STATE_UNSPECIFIED = 0

                # Ensure file at path is present.
                PRESENT = 1

                # Ensure file at path is absent.
                ABSENT = 2

                # Ensure the contents of the file at path matches. If the file does
                # not exist it will be created.
                CONTENTS_MATCH = 3
              end
            end
          end

          # Resource groups provide a mechanism to group OS policy resources.
          #
          # Resource groups enable OS policy authors to create a single OS policy
          # to be applied to VMs running different operating Systems.
          #
          # When the OS policy is applied to a target VM, the appropriate resource
          # group within the OS policy is selected based on the `OSFilter` specified
          # within the resource group.
          # @!attribute [rw] os_filter
          #   @return [::Google::Cloud::OsConfig::V1alpha::OSPolicy::OSFilter]
          #     Deprecated. Use the `inventory_filters` field instead.
          #     Used to specify the OS filter for a resource group
          # @!attribute [rw] inventory_filters
          #   @return [::Array<::Google::Cloud::OsConfig::V1alpha::OSPolicy::InventoryFilter>]
          #     List of inventory filters for the resource group.
          #
          #     The resources in this resource group are applied to the target VM if it
          #     satisfies at least one of the following inventory filters.
          #
          #     For example, to apply this resource group to VMs running either `RHEL` or
          #     `CentOS` operating systems, specify 2 items for the list with following
          #     values:
          #     inventory_filters[0].os_short_name='rhel' and
          #     inventory_filters[1].os_short_name='centos'
          #
          #     If the list is empty, this resource group will be applied to the target
          #     VM unconditionally.
          # @!attribute [rw] resources
          #   @return [::Array<::Google::Cloud::OsConfig::V1alpha::OSPolicy::Resource>]
          #     Required. List of resources configured for this resource group.
          #     The resources are executed in the exact order specified here.
          class ResourceGroup
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Policy mode
          module Mode

            # Invalid mode
            MODE_UNSPECIFIED = 0

            # This mode checks if the configuration resources in the policy are in
            # their desired state. No actions are performed if they are not in the
            # desired state. This mode is used for reporting purposes.
            VALIDATION = 1

            # This mode checks if the configuration resources in the policy are in
            # their desired state, and if not, enforces the desired state.
            ENFORCEMENT = 2
          end
        end
      end
    end
  end
end

