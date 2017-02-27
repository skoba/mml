require 'spec_helper'

describe 'mmlHd:HemoDialysisModule' do
  let(:validator) { SampleValidator.new 'hemodialysis.xsd' }

  example 'sample instance vaildation' do
    expect(validator).to be_valid 'mmlhd_sample.xml'
  end
end
