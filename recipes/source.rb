include_recipe 'build-essential::default'

node['ruby_basic']['system']['dependencies'].each do |r_deps|
    package r_deps 
end

remote_file "#{Chef::Config[:file_cache_path]}/ruby-#{node['ruby_basic']['ruby']['version'][0..4]}.tar.gz" do
    source "http://cache.ruby-lang.org/pub/ruby/#{node['ruby_basic']['ruby']['version'][0..2]}/ruby-#{node['ruby_basic']['ruby']['version'][0..4]}.tar.gz"
    action :create_if_missing
end

bash 'compile ruby source' do
    user 'root'
    cwd Chef::Config[:file_cache_path]
    code <<-EOH
    tar --no-same-owner -zxf ruby-#{node['ruby_basic']['ruby']['version'][0..4]}.tar.gz
    (cd ruby-#{node['ruby_basic']['ruby']['version'][0..4]} && ./configure && make && make install)
    EOH
    not_if "ruby -v | grep \"#{node['ruby_basic']['ruby']['version'].gsub('-', '')}\""
end
