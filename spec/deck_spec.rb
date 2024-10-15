require 'rspec'
require './lib/card'
require './lib/deck'
require 'pry'

RSpec.describe Deck do
    it "is initialized with an array of Card objects" do
       #creates a few card instances
       card1 = Card.new(:diamond, 'Queen', 12)
       card2 = Card.new(:spade, '3', 3)
       card3 = Card.new(:heart, 'Ace', 14)

        #create an array of Card objects
        cards = [card1, card2, card3]

        #testing the initialization of the Deck object with this array of Card objects
        deck = Deck.new(cards) 

        # Test if the Deck was initialized 
        expect(deck.cards).to eq(cards) #deck.cards is like asking what cards are associated w/ THIS deck
    end

    it "returns the rank of a card at a given index" do 
        #create a few Card objects ????why do we need to rewrite this???
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        #Test rank_of_card_at method
        expect(deck.rank_of_card_at(0)).to eq(12) # Rank of card1 (Queen)
        expect(deck.rank_of_card_at(1)).to eq(3) # Rank of card2 (3)
        expect(deck.rank_of_card_at(2)).to eq(14) # Rank of card3 (Ace)
    end     

    describe Deck do
    it "returns an array of high ranking cards" do
        #creates a few card instances
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)

        # Initialize the Deck with these cards
        deck = Deck.new([card1, card2, card3])
        
        expect(deck.high_ranking_cards).to eq([card1, card3])
     end
    end

    it "the percentage of high ranking cards" do
        #creates a few card instances
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
   
        # Initialize the Deck with these cards
        deck = Deck.new([card1, card2, card3])
   
        expect(deck.percent_high_ranking).to eq(66.67)
    end

    it "removes a card" do
        #creates a few card instances
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
   
        # Initialize the Deck with these cards
        deck = Deck.new([card1, card2, card3])
   
        expect(deck.remove_card).to eq(card1)
    end

    it "adds a card" do
        #creates a few card instances
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        card4 = Card.new(:club, '5', 5)

        #create an array of Card objects
        cards = [card1, card2, card3, card4]

        # Initialize the Deck with these cards
        deck = Deck.new(cards)

        expect(deck.add_card).to eq(cards)
    end
end












#     it "is initialized with an array of cards" do
# #         deck = Deck.new(cards)
# #         expect(deck.cards).to eq(cards)
# #     end
# # end

# # spec/deck_spec.rb
# require './deck'
# require './card'

# RSpec.describe Deck do
#   it "is initialized with an array of Card objects" do
#     # Create a few Card objects using symbols for suits
#     card1 = Card.new(:diamond, 'Queen', 12)
#     card2 = Card.new(:spade, '3', 3)
#     card3 = Card.new(:heart, 'Ace', 14)

#     # Create an array of Card objects
#     cards = [card1, card2, card3]

#     # Initialize the Deck with this array of Card objects
#     deck = Deck.new(cards)

#     # Test if the Deck was initialized with the correct Card objects
#     expect(deck.cards).to eq(cards)
#   end

    
#     it "exists and has 52 cards" do
#    # Create 52 card objects with ranks 1 to 52 
#         cards = (1..52).map { |rank| Card.new('Hearts', rank.to_s, rank) }
  
       
#     # end
    
#     # it "take a cards index and return its rank" do
#     #     deck = 
#     # end





    # it "exists and has 52 cards" do
    #     deck = Deck.new([1..52])
    #     expect(deck).to be_an_instance_of(Deck)



    #     it 'is exists and has 52 cards' do
#     suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
#     values_and_ranks = {'2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8,
#         '9' => 9, '10' => 10, 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}
        
#         deck = Deck.new(cards)

# #binding.pry #test will stop running HERE and will open a pry session in order to inspect the following expect statements

#     expect(deck).to be_a(Deck)




