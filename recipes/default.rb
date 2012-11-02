#
# Cookbook Name:: guacamole
# Recipe:: default
# Author:: Jeff Dutton (<jeff.dutton@stratus.com>)
#
# Copyright (C) 2012, Jeff Dutton
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied. See the License for the specific language governing
# permissions and limitations under the License.

include_recipe "tomcat"

if platform_family? "debian"
  # Packages require `apt-get update` before installing for unknown reasons
  include_recipe "apt"
  package "guacamole" do
    action :install
    notifies :run, "execute[apt-get-update]", :immediately
  end
end    

guacamole_war = File.join(node["tomcat"]["webapp_dir"], "guacamole.war")
remote_file guacamole_war do
  source node["guacamole"]["war"]["url"]
  checksum node["guacamole"]["war"]["checksum"]
  user node['tomcat']['user']
  group node['tomcat']['group']
  mode '0644'
  notifies :restart, 'service[tomcat]'
end

# This is a very private file, owned by root, but tomcat must be able
# to read it.
file '/etc/guacamole/user-mapping.xml' do
  user 'root'
  group node['tomcat']['group']
  mode '0640'
end

link "#{node['tomcat']['home']}/lib/guacamole.properties" do
  to "/etc/guacamole/guacamole.properties"
end

# Local Variables:
# ruby-indent-level: 2
# indent-tabs-mode: nil
# End:
