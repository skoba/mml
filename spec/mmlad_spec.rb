describe 'mmlAd:Address' do
  let(:validator) { SampleValidator.new('address.xsd') }

  example 'mmlad_structured_sample validation' do
    expect(validator).to be_valid 'mmlad_structured_sample.xml'
  end

  example 'mmlad_unstructured_sample validation' do
    expect(validator).to be_valid 'mmlad_unstructured_sample.xml'
  end
end
