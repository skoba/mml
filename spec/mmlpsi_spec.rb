describe 'mmlPsi:PersonalizedInfo' do
  let(:validator) { SampleValidator.new 'personalizedinfo.xsd' }

  example 'mmlPsi:PersonalizedInfo sample validation' do
    expect(validator).to be_valid 'mmlpsi_sample.xml'
  end
end
