describe 'mmlRe:ReferralModule' do
  let(:validator) { SampleValidator.new 'referral.xsd' }

  example 'Sample instance vaildator' do
    expect(validator).to be_valid 'mmlre_sample.xml'
  end
end
