class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I love you'
  end

  def fall_of_ladder
    'Call my agent'
  end

  def light_of_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_of_ladder
      actor.light_of_fire
    end
  end
end


RSpec.describe Movie do
  let(:stuntman) { double('Mr. Danger', ready?: true, act: 'Any string', fall_of_ladder: 'Other string', light_of_fire: false)}

  subject { described_class.new(stuntman)}

  describe '#start_shooting method' do
    it 'expects actor to do 3 action' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act)
      expect(stuntman).to receive(:fall_of_ladder)
      expect(stuntman).to receive(:light_of_fire)

      subject.start_shooting
    end
  end

end

# RSpec.describe '' do
#   it '' do
#     expect().to eq()
#   end
# end
