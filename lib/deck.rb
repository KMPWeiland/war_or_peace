class Deck
    attr_reader :cards

    def initialize
        @cards = [] #create an empty array to hold the cards + @cards is an instance variable of the Deck class
        generate_deck
    end

    def generate_deck
        suits = ['Hearts', 'Clubs', 'Spades', 'Diamonds']
        ranks = []



end