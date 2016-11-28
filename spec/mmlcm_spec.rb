describe 'mmlCm:Common' do
  let(:validator) { SampleValidator.new 'common.xsd' }

  describe 'mmlCm:Id' do
    example 'Personal ID without facility' do
      expect(validator).to be_valid 'mmlcm_personal_id_sample.xml'
    end

    example 'Personal ID with facility' do
      expect(validator).to be_valid 'mmlcm_personal_id_with_facility_sample.xml'
    end

    example 'Department ID' do
      expect(validator).to be_valid 'mmlcm_department_id_sample.xml'
    end
  end
end
