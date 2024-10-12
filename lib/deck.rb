class Deck
    attr_reader :cards

    def initialize(cards_array)
        #Deck NEEDS a list of cards in order to be setup
        @cards = cards_array
    end
    
    def rank_of_card_at(index)
        @cards[index].rank #this method will take one argument that represents the index location of a card to be used...and will return the rank of that card.
    end

    def high_ranking_cards #this method will return an array of cards in the deck that have a rank of 11 or above (face cards and aces)
        high_ranking = []
        cards.each do |card|
            if card.rank >= 11
                high_ranking << card
            end
        end
        high_ranking
    end

    def percent_high_ranking #this method will return the percent of high ranking cards in a given card array
        high_ranking_count = high_ranking_cards.count 
        total_cards = @cards.count
        percent_high = high_ranking_count.to_f / total_cards * 100
        percent_high.round(2)
    end

    def remove_card #this method will remove and return the first card in the arry
        @cards.shift
    end

    def add_card #this method will remove and return the first card in the arry
        @cards.push()
    end

end



    # end

    # def generate_deck
    #     suits = ['Hearts', 'Clubs', 'Spades', 'Diamonds']
    #     ranks = []

# # deck.rb
# class Deck
#     attr_reader :cards
  
#     def initialize(cards_array)
#       @cards = cards_array
#     end
  
#     def rank_of_card_at(index)
#       @cards[index].rank  # Access the rank of the card at the given index
#     end
#   end
  