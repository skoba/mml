describe 'mmlBc:BaseClinicModule' do
  let(:validator) { SampleValidator.new('baseclinic.xsd') }

  example 'BaseClinicModule sample validation' do
    expect(validator).to be_valid 'mmlbc_sample.xml'
  end
end
