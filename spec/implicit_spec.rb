RSpec.describe Hash do
  # let(:my_hash) { {} } this is behind the scenes like this we don't
  # need to define the let variable
  it 'should expect empy' do
    expect(subject.length).to eq(0)
  end
end
