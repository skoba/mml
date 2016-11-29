describe 'mmlHi:HealthInsuranceModule' do
  let(:validator) { SampleValidator.new 'healthinsurance.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmlhi_sample.xml'
  end
end
