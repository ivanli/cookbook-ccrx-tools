#
# Cookbook Name:: ccrx
# Recipe:: default
#
# Copyright 2015, Ivan Li
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'windows'

windows_package 'Renesas RX Compiler V2.03.00' do
  package_name 'Renesas RX Compiler V2.03.00'
  source node['ccrx']['compiler_installer_path']
  installer_type :installshield
  action :install
end

windows_package 'Renesas License Manager' do
  package_name 'Renesas License Manager'
  source node['ccrx']['license_manager_installer_path']
  installer_type :installshield
  action  :install
end

windows_package 'Renesas E-Series USB Driver' do
  package_name 'Renesas E-Series USB Driver'
  source node['ccrx']['e1_driver_installer_path']
  installer_type :installshield
  action  :install
end

windows_path 'C:\Program Files (x86)\Renesas\RX\2_3_0\bin' do
  action :add
end
