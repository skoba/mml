describe 'mmlSc:Security' do
  let(:validator) { SampleValidator.new 'security.xsd' }

  example 'mmlSc component instance validation' do
    expect(validator).to be_valid 'mmlsc_sample.xml'
  end
end
