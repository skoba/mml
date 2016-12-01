require 'spec_helper'

describe 'mmlFs:FlowsheetModule' do
  let(:validator) { SampleValidator.new 'flowsheet.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmlfs_sample.xml'
  end
end
