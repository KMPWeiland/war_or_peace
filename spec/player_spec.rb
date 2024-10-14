require 'rspec'
require_relative '../lib/card'
require_relative '../lib/deck'
require_relative '../lib/player'
require 'pry'

describe Deck do
    it "is initialized with an array of Card objects" do
       #creates a few card instances
       card1 = Card.new(:diamond, 'Queen', 12)
       card2 = Card.new(:spade, '3', 3)
       card3 = Card.new(:heart, 'Ace', 14)
       
       #testing the initialization of the Deck object with this array of Card objects
       deck = Deck.new([card1, card2, card3])
       
       #testing the initialization of the Player object
       player = Player.new('Clarisa', deck) 

       # Test if the Deck was initialized with correct name 
       expect(player.name).to eq("Clarisa") 

       # Test if the Deck was initialized with correct cards 
       expect(player.deck).to eq(deck) 

    end

    it "determines if a Player lost" do
        #creates a few card instances
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        
        #testing the initialization of the Deck object with this array of Card objects
        deck = Deck.new([card1, card2, card3])
        
        #testing the initialization of the Player object
        player = Player.new('Clarisa', deck) 
 
        # Test if the Deck was initialized with correct name 
        expect(player.has_lost?).to eq(false)  
    end    


    it "removes a card from the deck" do
        #creates a few card instances
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        
        #testing the initialization of the Deck object with this array of Card objects
        deck = Deck.new([card1, card2, card3])
        
        #testing the initialization of the Player object
        player = Player.new('Clarisa', deck) 
 
        # Test if the Deck was initialized with correct name 
        expect(player.deck.remove_card).to eq(card1)  
    end

    it "removes a card from the deck" do
        #creates a few card instances
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        
        #testing the initialization of the Deck object with this array of Card objects
        deck = Deck.new([card1, card2, card3])
        
        #testing the initialization of the Player object
        player = Player.new('Clarisa', deck) 
 
        # Test if the Deck was initialized with correct name 
        expect(player.deck.remove_card).to eq(card1)  
    end   


end
