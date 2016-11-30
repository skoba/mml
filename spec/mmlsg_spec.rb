describe 'mmlSg:SurgeryModule' do
  let(:validator) { SampleValidator.new 'surgery.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmlsg_sample.xml'
  end
end
