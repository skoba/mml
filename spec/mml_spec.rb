describe 'MML' do
  let(:validator) { SampleValidator.new 'mml.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mml4_sample1.xml'
  end

  example 'sample2 instance validation' do
    expect(validator).to be_valid 'mml4_sample2.xml'
  end

  example 'sample3 instance validation' do
    expect(validator).to be_valid 'mml4_sample3.xml'
  end

  example 'sample3 instance validation' do
    expect(validator).to be_valid 'mml4_sample4.xml'
  end
end
