# frozen_string_literal: true

RSpec.describe CRat do
  describe 'CRat::VERSION' do
    it 'has a version number' do
      expect(CRat::VERSION).not_to be nil
    end
    it 'has the right version number set in env' do
      expect(CRat::VERSION).to eq('0.1.0')
    end
  end

  describe '#config' do
    it 'returns the correct AWS secret access key' do
      expect(CRat.config.aws_secret_access_key).to eq('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
    end

    it 'returns the correct AWS access_key_id ' do
      expect(CRat.config.aws_access_key_id).to eq('XXXXXXXXXXXXXXXXXXXX')
    end
  end
end
