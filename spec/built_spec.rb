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


# RSpec.describe '' do
#   it '' do
#     expect().to eq()
#   end
# end
