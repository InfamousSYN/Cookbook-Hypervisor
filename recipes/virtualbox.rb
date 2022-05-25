##
## Cookbook:: Cookbook-Hypervisor
## Recipe:: virtualbox
##
## Copyright:: 2018, The Authors, All Rights Reserved.
#

node[:virtualbox][:dependencies].each do |pkg|
  package "#{pkg}" do
    action :install
  end
end

execute "[*] Retrieving latest virtualbox version number" do
    command "export VBOX_LATEST=$( curl #{node[:virtualbox[:url]}/LATEST-STABLE.TXT )"
    action :run
end

execute "[*] Downloading latest ext pack" do
    command "wget #{node[:virtualbox[:url]}/$VBOX_LATEST/Oracle_VM_VirtualBox_Extension_Pack-$VBOX_LATEST.vbox-extpack"
    action :run
end

execute "[*] Installing latest ext pack" do
    command "echo 'y' | vboxmanage extpack install ./Oracle_VM_VirtualBox_Extension_Pack-$VBOX_LATEST.vbox-extpack"
    action :run
end
