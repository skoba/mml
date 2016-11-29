describe 'mmlLb:TestModule' do
  let(:validator) { SampleValidator.new 'testhistory.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmllb_sample.xml'
  end
end
