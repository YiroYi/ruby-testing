class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end



RSpec.describe Card do #NAme of class, open the test or can pass Class name
# it its to name the test

  # "before" is going to run before each example case.
  # before do
  #   @card = Card.new('Ace','Spades')
  # end

  # def card
  #   Card.new('Ace','Spades')
  # end

  # let (symbol) this convert the symbol into a variable
  let(:card) { Card.new('Ace','Spades') }

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end
