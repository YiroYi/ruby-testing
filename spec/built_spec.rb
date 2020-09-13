RSpec.describe 'not to mehot' do
  it 'checks two values dont match' do
    expect(5).not_to eq(6)
  end
end

# not_to it is equal to !=

RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  it 'it test for value and ignore type' do
    expect(a).to eq(3)
    expect(a).to eq(b)
  end
end

RSpec.describe 'eql matcher' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  it 'test for value, including same type' do
    expect(a).not_to eql(3.8)
    expect(b).not_to eql(3.9)
    expect(a).not_to eql(b)
  end
end

RSpec.describe 'Equal and B matcher' do
  let(:a) { 3.0 }
  let(:b) { 3 }
  let(:c) { [1, 2, 3] }
  let(:d) { [1, 2, 3] }
  let(:e) { c }

  it 'care about identity' do
    expect(c).to eq(d)
    expect(c).to eql(d)

    expect(c).to eql(d) # testea identidad
  end
end

RSpec.describe 'comparison marchers' do
  it 'allows for comparison with built-ini Ruby operators' do
    expect(10).to be > 5
    expect(8).to be < 15
    expect(1).to be >= 0
  end

  describe 100 do
    it { is_expected.to be > 50 }
    it { is_expected.to be < 500 }
  end
end

# RSpec.describe '' do
#   it '' do
#     expect().to eq()
#   end
# end


# equal same in design but not identical identical talk about the address , thow house are euqal in design but not identical because they
# different address
