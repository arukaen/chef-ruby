default['ruby_basic']['install_method'] = 'source'
default['ruby_basic']['system']['dependencies'] = case node['platform_family']
when 'debian'
    %w(
    libpq-dev zlib1g-dev libssl-dev libreadline-dev
    libyaml-dev libsqlite3-dev sqlite3 libxml2-dev
    libxslt1-dev libcurl4-openssl-dev libffi-dev python-software-properties
    )
when 'rhel'
    %w(
    gcc openssl-devel libyaml-devel libffi-devel 
    readline-devel zlib-devel gdbm-devel ncurses-devel
    )
end
default['ruby_basic']['ruby']['version'] = '2.1.5-p273'
