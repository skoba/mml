describe 'mmlPs:VitalSignModule' do
  let(:validator) { SampleValidator.new 'vitalsign.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmlvs_sample.xml'
  end
end
