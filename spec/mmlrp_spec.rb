describe 'mmlRp:ReportModule' do
  let(:validator) { SampleValidator.new 'report.xsd' }

  example 'Sample instance vaildator' do
    expect(validator).to be_valid 'mmlrp_sample.xml'
  end
end
