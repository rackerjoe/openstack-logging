# Cookbook Name:: openstack-logging
# Recipe:: nova
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

# nova-api-metadata and nova-compute
if node.recipe?("nova::compute") or node[:recipes].include?("nova::compute")
  openstack_logging_filemonitor "nova-api-metadata" do
    monitor_name "nova-api-metadata"
    action :create
  end
  openstack_logging_filemonitor "nova-compute" do
    monitor_name "nova-compute"
    action :create
  end
end

# nova-api-ec2
if node.recipe?("nova::nova-api-ec2") or node[:recipes].include?("nova::nova-api-ec2")
  openstack_logging_filemonitor "nova-api-ec2" do
    monitor_name "nova-api-ec2"
    action :create
  end
end

# nova-api-os-compute
if node.recipe?("nova::api-os-compute") or node[:recipes].include?("nova::api-os-compute")
  openstack_logging_filemonitor "nova-api-os-compute" do
    monitor_name "nova-api-os-compute"
    action :create
  end
end

# nova-compute
if node.recipe?("nova::api-os-compute") or node[:recipes].include?("nova::api-os-compute")
  openstack_logging_filemonitor "nova-api-os-compute" do
    monitor_name "nova-api-os-compute"
    action :create
  end
end

# nova-cert
if node.recipe?("nova::nova-cert") or node[:recipes].include?("nova::nova-cert")
  openstack_logging_filemonitor "nova-cert" do
    monitor_name "nova-cert"
    action :create
  end
end

# nova-conductor
if node.recipe?("nova::nova-conductor") or node[:recipes].include?("nova::nova-conductor")
  openstack_logging_filemonitor "nova-conductor" do
    monitor_name "nova-conductor"
    action :create
  end
end

# nova-consoleauth
if node.recipe?("nova::nvcproxy") or node[:recipes].include?("nova::vncproxy")
  openstack_logging_filemonitor "nova-consoleauth" do
    monitor_name "nova-consoleauth"
    action :create
  end
end

# always include nova-manage
openstack_logging_filemonitor "nova-manage" do
  monitor_name "nova-manage"
  action :create
end

# nova-network
if node.recipe?("nova-network::nova-compute") or node[:recipes].include?("nova-network::nova-compute")
  openstack_logging_filemonitor "nova-network" do
    monitor_name "nova-network"
    action :create
  end
end

# nova-scheduler
if node.recipe?("nova::scheduler") or node[:recipes].include?("nova::scheduler")
  openstack_logging_filemonitor "nova-scheduler" do
    monitor_name "nova-scheduler"
    action :create
  end
end
