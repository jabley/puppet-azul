require 'spec_helper'

describe 'azul::repo' do
  describe 'on RedHat' do
    let(:facts) {{
      :operatingsystem => 'RedHat',
    }}

    it { expect { should }.to raise_error(Puppet::Error, /Not implemented yet\. Pull requests welcome ;\)/) }
  end

  describe 'on Debian' do
    let(:facts) {{
      :operatingsystem => 'Debian',
    }}
  end
end
