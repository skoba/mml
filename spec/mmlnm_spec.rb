describe 'mmlNm:Name' do
  let(:validator) { SampleValidator.new 'name.xsd' }

  example 'mmlNm:Name structured name sample validation' do
    expect(validator).to be_valid 'mmlnm_structured_sample.xml'
  end

  example 'mmlNm:Name unstructured name sample validation' do
    expect(validator).to be_valid 'mmlnm_unstructured_sample.xml'
  end
end
