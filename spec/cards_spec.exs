# https://github.com/antonmi/espec
defmodule CardsSpec do
  use ESpec
  doctest Cards # evaluate code in the /doc folder

  # it do: expect true |> to(be_true())
  # it do: expect(1 + 1).to eq(2)
  # it do: (1..3) |> should(have 2)

  describe "Card module implementation", focus: true do
    it "Create a new deck" do
      length(Cards.create_deck) |> should(eq 52)
    end
  end
end