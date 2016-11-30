describe 'MML' do
  let(:validator) { SampleValidator.new 'mml.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mml4_sample1.xml'
  end
end
