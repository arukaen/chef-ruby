require 'spec_helper'

describe 'ruby_basic::package' do
    let(:platform) { 'ubuntu' }
    let(:platform_version) { '14.04' }
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: platform, version: platform_version).converge(described_recipe) }

    it 'install ruby packages' do
        expect(chef_run).to install_package('ruby-full')
        expect(chef_run).to install_package('ruby-dev')
    end

    context 'rhel system' do
        let(:platform) { 'centos' }
        let(:platform_version) { '7.0' }

    it 'should install ruby packages' do
        expect(chef_run).to install_package('ruby')
        expect(chef_run).to install_package('ruby-devel')
    end
    end
end
