#
# Cookbook Name:: netapp_e
# Resource:: volume
#
# Copyright 2014, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :create, :delete, :update
default_action :create

attribute :volume_name, kind_of: String, required: true, name_attribute: true
attribute :storage_system, kind_of: String, required: true

attribute :pool_id, kind_of: String
attribute :size_unit, kind_of: String, equal_to: %w(bytes b kb mb gb tb pb eb zb yb)
attribute :size, kind_of: Integer
attribute :segment_size, kind_of: Integer
attribute :new_name, kind_of: String
attribute :data_assurance_enabled, kind_of: [TrueClass, FalseClass], default: false
