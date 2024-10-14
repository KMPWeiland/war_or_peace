require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require 'pry'

describe Turn do
    it "is initialized with an array of Card objects" do
       #creates a few card instances
       card1 = Card.new(:heart, 'Jack', 11)
       card2 = Card.new(:heart, '10', 10)
       card3 = Card.new(:heart, '9', 9)
       card4 = Card.new(:heart, 'Jack', 11)
       card5 = Card.new(:heart, '8', 8)
       card6 = Card.new(:diamond, 'Queen', 12)
       card7 = Card.new(:heart, '3', 3)
       card8 = Card.new(:diamond, '2', 2)   
    
       #testing the initialization of the Deck object with this array of Card objects
       deck1 = Deck.new([card1, card2, card5, card8])
       deck2 = Deck.new([card4, card3, card6, card7])

       #testing the initialization of the Player object
       player1 = Player.new("Megan", deck1) 
       player2 = Player.new("Aurora", deck2) 
       
       # Test if the Turn instance
       turn = Turn.new(player1, player2)

       #  Test if the Turn instance was initialized with the correct players and empty spoils_of_war array
       expect(turn.player1).to eq(player1)
       expect(turn.player2).to eq(player2)
       expect(turn.spoils_of_war).to eq([])
    end

    it "tests a basic turn" do
       #creates a few card instances
       card1 = Card.new(:heart, 'Jack', 11)
       card2 = Card.new(:heart, '10', 10)
       card3 = Card.new(:heart, '9', 9)
       card4 = Card.new(:heart, 'Jack', 11)
       card5 = Card.new(:heart, '8', 8)
       card6 = Card.new(:diamond, 'Queen', 12)
       card7 = Card.new(:heart, '3', 3)
       card8 = Card.new(:diamond, '2', 2)   
    
       #testing the initialization of the Deck object with this array of Card objects
       deck1 = Deck.new([card1])
       deck2 = Deck.new([card3])

       #testing the initialization of the Player object
       player1 = Player.new("Megan", deck1) 
       player2 = Player.new("Aurora", deck2) 
       
       # Tests the Turn instance
       turn = Turn.new(player1, player2)
        # turn = Turn.new(player1, player2)
        # turn_type = turn.type

        expect(turn.type).to eq(:basic)
    end

    it "determines a winner" do
        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:heart, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8)
        card6 = Card.new(:diamond, 'Queen', 12)
        card7 = Card.new(:heart, '3', 3)
        card8 = Card.new(:diamond, '2', 2)   
     
        deck1 = Deck.new([card1])
        deck2 = Deck.new([card2])
 
        player1 = Player.new("Megan", deck1) 
        player2 = Player.new("Aurora", deck2) 
        
        turn = Turn.new(player1, player2)
        
        #determines which player wins the current turn
        winner = turn.winner
        
        expect(winner).to eq(player1) # Player 1 wins because 11 > 10
    end

    it "moves the top card from each player to spoils_of_war for a basic turn" do
        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
     
        deck1 = Deck.new([card1])
        deck2 = Deck.new([card2])
 
        player1 = Player.new("Megan", deck1) 
        player2 = Player.new("Aurora", deck2) 
        
        turn = Turn.new(player1, player2)
        
        winner = turn.winner

        turn.pile_cards # Move the top cards into spoils_of_war
        turn.award_spoils(winner) #award spoils to winner
        
        # Check that player1's deck now has the cards from spoils_of_war
        expect(player1.deck.cards).to eq([card1, card2])
    end


    it "tests a war turn" do
        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:heart, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8)
        card6 = Card.new(:diamond, 'Queen', 12)
        card7 = Card.new(:heart, '3', 3)
        card8 = Card.new(:diamond, '2', 2)   
     
        deck1 = Deck.new([card1, card2, card5, card8])
        deck2 = Deck.new([card4, card3, card6, card7])
 
        player1 = Player.new("Megan", deck1) 
        player2 = Player.new("Aurora", deck2) 
        
        turn = Turn.new(player1, player2)
        
        expect(turn.type).to eq(:war)
    end

    it "moves the top three cards from each player to spoils_of_war for a war turn" do
        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8)
        card6 = Card.new(:diamond, 'Queen', 12)
        card7 = Card.new(:heart, '3', 3)
        card8 = Card.new(:diamond, '2', 2)   
     
        deck1 = Deck.new([card1, card2, card5, card8])
        deck2 = Deck.new([card4, card3, card6, card7])
 
        player1 = Player.new("Megan", deck1) 
        player2 = Player.new("Aurora", deck2)  
        
        turn = Turn.new(player1, player2)
        winner = turn.winner

        turn.pile_cards 
        
        turn.award_spoils(winner)

        expect(player2.deck.cards).to eq([card7, card1, card2, card5, card4, card3, card6])
    end

    it "tests a mutually assured destruction turn" do
        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8)
        card6 = Card.new(:diamond, '8', 8)
        card7 = Card.new(:heart, '3', 3)
        card8 = Card.new(:diamond, '2', 2)   
     
        deck1 = Deck.new([card1, card2, card5, card8])
        deck2 = Deck.new([card4, card3, card6, card7])
 
        player1 = Player.new("Megan", deck1) 
        player2 = Player.new("Aurora", deck2) 
        
        turn = Turn.new(player1, player2)
        
        expect(turn.type).to eq(:mutually_assured_destruction)
    end

    it "removes three cards from each deck for the mutually assured destruction turn" do
        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:heart, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8)
        card6 = Card.new(:diamond, 'Queen', 12)
        card7 = Card.new(:heart, '3', 3)
        card8 = Card.new(:diamond, '2', 2)   
     
        deck1 = Deck.new([card1, card2, card5, card8])
        deck2 = Deck.new([card4, card3, card6, card7])
 
        player1 = Player.new("Megan", deck1) 
        player2 = Player.new("Aurora", deck2)  
        
        turn = Turn.new(player1, player2)
        winner = turn.winner

        turn.pile_cards 
        
        turn.award_spoils(winner)

        expect(player1.deck.cards).to eq([card8])
    end



end