describe 'mmlFc:Facility' do
  let(:validator) { SampleValidator.new 'facility.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmlfc_sample.xml'
  end
end
