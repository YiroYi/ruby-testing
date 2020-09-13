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

RSpec.describe 'predicates methods' do
  it 'can be tested with ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matches' do
    expect(16 / 2).to be_even
    expect(0).to be_zero
  end
end

# it is as make an each, this review one element by one
# all should pass true to the test passess
RSpec.describe 'all matchers' do
  it 'allows for aggregate checks' do
    expect([5, 7, 9]).to all(be_odd)
    expect([0, 0]).to all(be_zero)
    expect([5, 7, 9]).to all(be < 10)
  end
end

RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect(2).to be_truthy
    expect(-1).to be_truthy
    expect('Yiro').to be_truthy
    expect([]).to be_truthy
    expect('').to be_truthy
  end

  it 'test falsy' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end
end

# all ryby methods that has ? .zero? empty? etc replace with be_zero

RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }
  it 'checks that a method changes object state' do
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
  end

  it 'checks that a method changes object state' do
    expect { subject.push(4) }.to change { subject.length }.by(1) # la diferencia en el cambio
  end

  it 'accept negative' do
    expect { subject.pop }.to change { subject.length }.from(3).to(2) # la diferencia en el cambio
  end

  it 'accept negative' do
    expect { subject.pop }.to change { subject.length }.by(-1) # la diferencia en el cambio
  end
end
#Make a method change the object , this can be use when something is inserted in the DB


# RSpec.describe '' do
#   it '' do
#     expect().to eq()
#   end
# end


# equal same in design but not identical identical talk about the address , thow house are euqal in design but not identical because they
# different address
