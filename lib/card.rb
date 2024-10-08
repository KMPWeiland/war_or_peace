class Card
    attr_reader :suit,
                :rank,
                :value

    def initialize(suit, rank, value)
        @suit = suit # string for the card's suit
        @rank = rank # string for the card's rank
        @value = value # integer for the card's numerical value
    end
end