describe 'mmlPs:PrescriptionModule' do
  let(:validator) { SampleValidator.new 'prescription.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmlps_sample.xml'
  end
end
