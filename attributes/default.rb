
# General Settings
default[:general][:virtualbox][:enable] = true
default[:general][:vmware][:enable] = true
default[:general][:dependencies] = ['libaio1', 'gcc', 'xserver-xorg-core', 'build-essential']

# Virtualbox
default[:virtualbox][:dependencies] = ['virtualbox', 'virtualbox-dkms', 'virtualbox-guest-additions-iso', 'virtualbox-guest-x11']
default[:virtualbox[:url] = 'https://download.virtualbox.org/virtualbox'

# Vmware
default[:vmware][:dependencies] = []
