class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Boris') }
  let(:luois) { described_class.new('Luois') }

  it 'has a name' do
    expect(subject.name).to eq('Boris')
    expect(luois.name).to eq('Luois')
  end
end

#describe_class puede cambiar el nombre de las clases e instancear un objeto
