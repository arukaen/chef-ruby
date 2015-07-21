case node['platform_family']
when 'debian'
    package 'ruby-full'
    package 'ruby-dev'
when 'rhel'
    package 'ruby'
    package 'ruby-devel'
end
