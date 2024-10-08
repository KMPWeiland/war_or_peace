CARD
A Card represents a single card that would be in a traditional deck of 52 cards.

``` # double check that you are in your war_or_peace project directory!
pry(main)> require './lib/card'
#=> true

pry(main)> card = Card.new(:heart, 'Jack', 11)
#=> #<Card:0x007fbda8a88348 @rank=11, @suit=:heart, @value="Jack">

pry(main)> card.suit
#=> :heart

pry(main)> card.value
#=> "Jack"

pry(main)> card.rank
#=> 11