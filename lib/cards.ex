defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello
      :world

  """
  def hello do
    :world
  end

  @doc """
  Init a game dealing 5 cards by default
  """
  def start(hand_size \\ 5) do
    create_deck() 
    |> shuffle 
    |> deal(hand_size)
  end
  
  @doc """
  Create a deck of cards
  """
  def create_deck do
    values = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
    suits = ["♠", "♣", "♥", "♦"]
    # suits = ["♤", "♧", "♡", "♢"]

    # cards = for value <- values do
    #   for suit <- suits do
    #     "#{value} of #{suit}"
    #   end
    # end

    cards = for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end

    List.flatten cards
  end
  
  @doc """
  shuffle a deck
  """
  def shuffle(deck) do
    Enum.shuffle deck
  end

  @doc """
  check if a deck contains a specific card
  """
  def contains?(deck, card) do
    Enum.member? deck, card
  end

  @doc """
  take n number of cards
  """
  def deal(deck, hand_size) do
    {hand, _} = Enum.split deck, hand_size
    hand
  end

  @doc """
  Save the deck into the file system
  """
  def save(deck, filename \\ "my_deck") do
    binary = :erlang.term_to_binary deck
    File.write filename, binary
  end

  @doc """
  Loads a deck from the file system
  """
  def load(filename \\ "my_deck") do
    case File.read filename do
      {:ok, binary}     ->  :erlang.binary_to_term binary
      {:error, _}  -> IO.puts "Deck not found"
    end
  end
end
