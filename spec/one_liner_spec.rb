RSpec.describe do
  subject { 5 }

  context 'with classic sytax' do
    it 'should be equal to 5' do
      expect(subject).to eq(5)
    end
  end

  context 'one liner' do
    it { is_expected.to eq(5) }
  end
end
