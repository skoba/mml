describe 'mmlRd:RegisteredDiagnosisModule' do
  let(:validator) { SampleValidator.new 'registereddiagnosis.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmlrd_sample.xml'
  end
end
