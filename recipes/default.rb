##
## Cookbook:: Cookbook-Hypervisor
## Recipe:: default
##
## Copyright:: 2018, The Authors, All Rights Reserved.
#

node[:general][:dependencies].each do |pkg|
  package "#{pkg}" do
    action :install
  end
end

if node[:general][:virtualbox][:enable]
  include_recipe '::virtualbox'
end

if node[:general][:vmware][:enable]
  include_recipe '::vmware'
end
