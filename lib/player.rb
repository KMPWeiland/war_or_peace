class Deck
    attr_reader :cards

    def initialize(cards_array)
        #Deck NEEDS a list of cards in order to be setup
        @cards = cards_array
    end
    
    def rank_of_card_at(index)
        @cards[index].rank #this method will take one argument that represents the index location of a card to be used...and will return the rank of that card.
    end