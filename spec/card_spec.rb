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
  # also let is a kind of lazy loading because it is not going to
  # be loaded until it is called inside the example block

  let(:card) { Card.new('Ace','Spades') }

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom message error' do
    comparision = 'Spades'
    expect(card.suit).to eq(comparision), "Hey I expected #{comparision}, but i got #{card.suit}"
    # after eq it can be added a second paramater that it
    # is a custom message
  end
end
