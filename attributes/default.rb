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

#default["guacamole"]["war"]["url"] = "https://s3.amazonaws.com/myownguac/guacamole.war"
#default["guacamole"]["war"]["checksum"] = "87cd84e6bb187" #...
default["guacamole"]["war"]["url"] = "/var/lib/guacamole/guacamole.war"

# Sourceforge has pre-built packages of newer versions for various platforms, downloadable as tarballs
default["guacamole"]["sourceforge"]["url"] = "http://sourceforge.net/projects/guacamole/files/previous/binary/linux-x86-64/ubuntu-12.04/bundle/guacamole-0.6.0-ubuntu-12.04-x86-64.tar.gz/download"
default["guacamole"]["sourceforge"]["checksum"] = "fe7a2777"

# Newest version, not yet tested...
#default["guacamole"]["sourceforge"]["url"] = "http://sourceforge.net/projects/guacamole/files/current/binary/ubuntu-12.04-amd64/guacamole-0.7.0-ubuntu-12.04-amd64.tar.gz/download"
#default["guacamole"]["sourceforge"]["checksum"] = "18f19f0c1f"
