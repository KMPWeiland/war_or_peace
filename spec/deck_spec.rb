require 'rspec'
require './lib/deck'
require 'pry'

RSpec.describe Deck do
    it 'is an instance of deck'
        deck = Deck.new

        binding.pry #test will stop running HERE and will open a pry session in order to inspect the following expect statements

    expect(deck).to be_a(Deck)

    it ''
end

