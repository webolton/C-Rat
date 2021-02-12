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

  xit 'does something useful' do
    expect(false).to eq(true)
  end
end
