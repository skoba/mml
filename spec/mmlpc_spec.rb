describe 'mmlPc:ProgressCourseModule' do
  let(:validator) { SampleValidator.new 'progresscourse.xsd' }

  example 'sample instance validation' do
    expect(validator).to be_valid 'mmlpc_sample.xml'
  end
end
