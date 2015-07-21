name             'ruby_basic'
maintainer       'Cris Gallardo'
maintainer_email 'c@cristhekid.com'
license          'Apache 2.0'
description      'Installs/Configures ruby_basic'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

%w(ubuntu centos debian fedora).each do |os|
    supports os
end

depends 'apt', '~> 2.7.0'
depends 'build-essential', '~> 2.2.3'
