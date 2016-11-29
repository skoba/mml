describe 'mmlDp:Department' do
  let(:validator) { SampleValidator.new 'department.xsd' }

  example 'mmlDp:Department sample validation' do
    expect(validator).to be_valid 'mmldp_sample.xml'
  end
end
