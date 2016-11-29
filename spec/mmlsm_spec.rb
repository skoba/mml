describe 'mmlSm:SummaryModule' do
  let(:validator) { SampleValidator.new 'summary.xsd' }

  example 'Sample instance vaildator' do
    expect(validator).to be_valid 'mmlsm_sample.xml'
  end
end
