require_relative 'lib/card' #REQUIRE VS. REQUIRE RELATIVE?
require 'rspec'
require_relative 'lib/deck'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/turn'
require 'pry'

#Create 52 Cards (A standard deck)

# Array to hold all 52 Card objects (from the Card class)
cards = []
suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades'] #suits array contains all four suits
# A hash that maps the card value to its rank
values_and_ranks = {'2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, 
'9' => 9, '10' => 10, 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}

suits.each do |suit|
    values_and_ranks.each do |value, rank|
        cards << Card.new(suit, value, rank)
    end
end

#Put those card into two Decks w/ some randomness
#shuffle deck of 52 cards
shuffled_cards = cards.shuffle
split_deck = shuffled_cards.length / 2

split_deck1 = shuffled_cards[0...split_deck]
split_deck2 = shuffled_cards[split_deck..-1]

deck1 = Deck.new(split_deck1)
deck2 = Deck.new(split_deck2)

#Create two players with the Decks you created
player1 = Player.new("Megan", deck1)
player2 = Player.new("Aurora", deck2)

game = Game.new(player1, player2)
#player 1 -2 are two varaibles holding these two distinct player objects

# puts "Type GO to start the game."
# user_input = gets.chomp
# puts user_input

# def start
#     if user_input == "GO"
#         puts "Welcome to War! (or Peace) This game will be played with 52 cards. The players today are Megan and Aurora. Type 'GO' to start the game!"
#     else
#         puts "Invalid response. Please type GO to start."
#     end
# end

game.start
#now just call all the methods in the order that mimics the gameplay

# turn1 = Turn.new(player1,player2)
