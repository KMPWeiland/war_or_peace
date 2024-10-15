class Player
    attr_reader :name, 
                :deck

    def initialize(name, deck)
        #Player NEEDS a deck in order to be setup
        @name = name
        @deck = deck
    end

    def has_lost?
        #Player loses if they have no cards left
        @deck.cards.empty?
    end

    def remove_card
        #removes and returns card from deck
        @deck.cards.shift
    end


end