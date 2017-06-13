describe 'mmlPr:ProcedureModule' do
  let(:validator) { SampleValidator.new 'procedure.xsd' }

  example 'Sample instance vaildator' do
    expect(validator).to be_valid 'mmlpr_sample.xml'
  end
end
