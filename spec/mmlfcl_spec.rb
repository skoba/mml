describe 'mmlFcl:FirstClinicModule' do
  let(:validator) { SampleValidator.new 'firstclinic.xsd' }

  xexample 'sample instance validation' do
    expect(validator).to be_valid 'mmlfcl_sample.xml'
  end
end
