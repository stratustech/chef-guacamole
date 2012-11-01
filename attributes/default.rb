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

default["guacamole"]["war"]["url"] = "https://s3.amazonaws.com/avance-multisite/dependencies/guacamole.war"
default["guacamole"]["war"]["checksum"] = "87cd84e6bb187" #...
