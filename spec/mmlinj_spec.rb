describe 'mmlInj:InjectionModule' do
  let(:validator) { SampleValidator.new 'injection.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmlinj_sample.xml'
  end
end
