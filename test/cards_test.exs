defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "create a deck" do
    deck_length = length Cards.create_deck
    assert deck_length == 52
  end

  test "shuffling a deck ramdonizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end
end
