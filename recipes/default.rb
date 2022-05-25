##
## Cookbook:: Cookbook-Hypervisor
## Recipe:: default
##
## Copyright:: 2018, The Authors, All Rights Reserved.
#

if node[:general][:virtualbox][:enable]
  include_recipe '::virtualbox'
end

if node[:general][:vmware][:enable]
  include_recipe '::vmware'
end
