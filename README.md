openstack-monitoring Cookbook
=============================

Support
-------

Issues have been disabled for this repository.
Any issues with this cookbook should be raised here:

[https://github.com/rcbops/chef-cookbooks/issues](https://github.com/rcbops/chef-cookbooks/issues)

Please title the issue as follows:

[nova]: \<short description of problem\>

In the issue description, please include a longer description of the issue, along with any relevant log/command/error output.
If logfiles are extremely long, please place the relevant portion into the issue description, and link to a gist containing the entire logfile

Requirements
------------
Chef 0.10.0 or higher required (for Chef environment use).

Attributes
----------
* `syslog["queue_offline_messages"]` - Force the rsyslog cookbook to store log messages if the server is offline.  Defaults to true
* `openstack-logging["settings"]` - define the log file location for log files that will be injected into the syslog stream. 

# default logging defs.
default["openstack-logging"]["settings"] = {
  # glance logging defs
  "glance-api" => {
    "monitor_logfile" => "/var/log/glance/api.log",
    "injection_tag" => "glance-api_log:",
    "monitor_state_file" => "glance-api_log",
    "injection_severity" => "info",
    "injection_facility" => "local6"
  }
}

Usage
-----
#### openstack-monitoring::default

License and Authors
-------------------
Author:: Joseph Breu (<joseph.breu@rackspace.com>)

Copyright 2012, Rackspace US, Inc.  

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
