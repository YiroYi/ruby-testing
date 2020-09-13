RSpec.describe Hash do
  subject(:bob) do #here you are telling that the subject can be called bob as well
    { a: 1, b: 2 }
  end

  it ' has two value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end
end
