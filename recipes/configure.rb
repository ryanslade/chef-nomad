#
# Cookbook Name:: nomad
# Recipe:: configure
#
# Copyright 2015 The Authors
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

nomad = node['nomad']

nomad_config '00-default' do
  data_dir nomad['data_dir']
end

nomad_server_config '00-default' do
  enabled nomad['server_enabled']
end

nomad_client_config '00-default' do
  enabled nomad['client_enabled']
end

nomad_atlas_config '00-default' do
  join nomad['atlas_join']
end
