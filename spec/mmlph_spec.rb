require 'spec_helper'

describe 'mmlPh:Phone' do
  let(:validator) { SampleValidator.new('phone.xsd') }

  example 'mmlph_structured_sample validation' do
    expect(validator).to be_valid 'mmlph_structured_sample.xml'
  end

  example 'mmlph_unstructured_sample validation' do
    expect(validator).to be_valid 'mmlph_unstructured_sample.xml'
  end
end
