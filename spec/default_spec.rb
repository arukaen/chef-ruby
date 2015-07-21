require 'spec_helper'

describe 'ruby_basic::default' do
    let :chef_run do
        ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04')
    end

before do
    stub_command("ruby -v | grep \"2.1.5p273\"").and_return(false)
end

it 'should have default install_method as package' do
    chef_run.converge(described_recipe)
    expect(chef_run.node['ruby_basic']['install_method']).to eq('package')
    end

it 'should include the package recipe' do
    chef_run.converge(described_recipe)
    expect(chef_run).to include_recipe('ruby_basic::package')
    end

it 'should include the source recipe' do
    chef_run.node.set['ruby_basic']['install_method'] = 'source'
    chef_run.converge(described_recipe)
    expect(chef_run).to include_recipe('ruby_basic::source')
    end
end
