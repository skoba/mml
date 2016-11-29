describe 'mmlCi:CreatorInfo' do
  let(:validator) { SampleValidator.new 'creatorinfo.xsd' }

  example 'CreatorInfo sample validation' do
    expect(validator).to be_valid 'mmlci_sample.xml'
  end
end
