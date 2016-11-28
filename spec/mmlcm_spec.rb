describe 'mmlCm:Common' do
  let(:validator) { SampleValidator.new 'common.xsd' }

  describe 'mmlCm:Id' do
    example 'personal ID without facility' do
      expect(validator).to be_valid 'mmlcm_personal_id_sample.xml'
    end   
  end
end
