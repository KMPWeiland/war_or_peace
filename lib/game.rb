class Game
    attr_reader :player1,
                :player2
                :turn_count

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @turn_count = 0
    end

    # user_input = gets.chomp
    #  #any time you call one of these variable you have to call it on an object (always call the methods on an object)
    #  #pattern of transfering the local variable to the instance variable 
    #  #DO I INITIALIZE PLAYERS HERE? WILL THAT INTERFERE WITH INSTANCE VARIABLES FROM PREVIOUS CLASSES?

    def start
        puts "Welcome to War! (or Peace) 
This game will be played with 52 cards.
The players today are Megan and Aurora. Type 'GO' to start the game!"
        user_input = gets.chomp  # Get user input and store it in user_input
        if user_input == "GO"
          start_game
        else
          puts "Invalid input. Type 'GO' to start the game."
        end
    end


    def start_game
        until player1.has_lost? || player2.has_lost?
            @turn_count +=1
            turn = Turn.new(player1, player2)
            turn_type = turn.type
            winner = turn.winner
            if turn_type == :basic
                puts "Turn #{@turn_count}: #{winner.name} won two cards."
            elsif turn_type == :war
                puts "Turn #{@turn_count}: WAR - #{winner.name} won six cards."
            elsif
                puts "Turn #{@turn_count}: *mutually assured destruction* 6 cards removed from play."
            end
        end

            turn.pile_cards
            turn.award_spoils(winner) 
     

        if @turn_count == 1000000
            puts "---- DRAW ----"
            break
        end

        if player1.has_lost?
            puts "*~*~*~* #{player2.name} has won the game! *~*~*~*"
        elsif player2.has_lost?
            puts "*~*~*~* #{player1.name} has won the game! *~*~*~*"
        end
    end
end
      
 
    # def start
    #     if user_input == "GO"
    #         puts "Welcome to War! (or Peace) This game will be played with 52 cards. The players today are Megan and Aurora. Type 'GO' to start the game!"
    #     else
    #         puts "Invalid response."
    #     end
    # end



#     attr_reader :player1, 
#                 :player2,
#                 :spoils_of_war

#     def start(player1, player2)
#         @player1 = player1
#         @player2 = player2
#         @spoils_of_war = []
#     end

#     def type
#         if player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0) && 
#             player1.deck.rank_of_card_at(2) == player2.deck.rank_of_card_at(2)
#             :mutually_assured_destruction
#         elsif
#             player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)
#             :war
#         else
#             :basic
#         end
#     end




    # def start_game
    #     until player1.has_lost? || player2.has_lost?
    #         @turn_count +=1
    #         turn = Turn.new(player1, player2)

    #         if turn.type == :basic && turn.winner == player1
    #             puts "Turn #{@turn_count}: #{player1.name} won two cards."
    #             puts "Player1 has #{player1.deck.cards.count} cards left."
    #             puts "Player2 has #{player2.deck.cards.count} cards left."
    #         elsif turn.type == :basic && turn.winner == player2
    #             puts "Turn #{@turn_count}: #{player2.name} won two cards"
    #             puts "Player1 has #{player1.deck.cards.count} cards left."
    #             puts "Player2 has #{player2.deck.cards.count} cards left."
    #         elsif turn.type == :war && turn.winner == player1
    #             puts "Turn #{@turn_count}: WAR - #{player1.name} won six cards."
    #             puts "Player1 has #{player1.deck.cards.count} cards left."
    #             puts "Player2 has #{player2.deck.cards.count} cards left."
    #         elsif turn.type == :war && turn.winner == player2
    #             puts "Turn #{@turn_count}: WAR - #{player2.name} won six cards."
    #             puts "Player1 has #{player1.deck.cards.count} cards left."
    #             puts "Player2 has #{player2.deck.cards.count} cards left."
    #         elsif turn.type == :mutually_assured_destruction
    #             puts "Turn #{@turn_count}: *mutually assured destruction* 6 cards removed from play."
    #             puts "Player1 has #{player1.deck.cards.count} cards left."
    #             puts "Player2 has #{player2.deck.cards.count} cards left."
    #         end
    #     end