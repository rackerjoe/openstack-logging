# Cookbook Name:: openstack_logging
# Recipe:: glance
#
# Copyright 2013, Rackspace US, Inc.
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

# Glance rsyslog setup
if node.recipe?("glance::api") or node[:recipes].include?("glance-api")
  openstack_logging_filemonitor "glance-api" do
    monitor_name "glance-api"
    action :create
  end
  openstack_logging_filemonitor "glance-scrubber" do
    monitor_name "glance-scrubber"
    action :create
  end
  openstack_logging_filemonitor "glance-cache" do
    monitor_name "glance-cache"
    action :create
  end
end

if node.recipe?("glance::registry") or node[:recipes].include?("glance-registry")
  openstack_logging_filemonitor "glance-registry" do
    monitor_name "glance-registry"
    action :create
  end
end
