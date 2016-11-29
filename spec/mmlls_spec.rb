describe 'mmlLs:LifestyleModule' do
  let(:validator) { SampleValidator.new 'lifestyle.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmlls_sample.xml'
  end
end
