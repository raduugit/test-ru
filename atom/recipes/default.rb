#
# Cookbook:: atom
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#


#bash 'atom_download' do
#	code "wget https://atom.io/download/rpm --output-document=/tmp/atom.rpm"
#	not_if { ::File.exist?('/tmp/atom.rpm') }
#end

remote_file '/tmp/atom.rpm' do
	source 'https://atom.io/download/rpm'
	action :create_if_missing
#	not_if { ::File.exist?('/tmp/atom.rpm') }
end

package '/tmp/atom.rpm' do
	action :install
end
