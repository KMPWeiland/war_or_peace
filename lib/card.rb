class Card
    # attr_reader :suit,
    #             :value,
    #             :rank

    def initialize(suit, value, rank)
        @suit = suit # string for the card's suit
        @value = value  # string for the card's rank
        @rank = rank # integer for the card's numerical value
    end

    def suit
        binding.pry
        @suit
    end
    
    def value
        @value
    end

    def rank
        @rank
    end


      
end