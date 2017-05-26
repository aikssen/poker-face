# Cards

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cards` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:cards, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/cards](https://hexdocs.pm/cards).


## COMPILE: Generate app cards

```
$ iex -S mix
```

Then:

```
iex> Cards.hello
# :world
```

Once the app was generated, it can be recompile with the command:
```
iex> recompile
```

## Install dependencies
```
$ mix deps.get
```

## Generate documentation

In the file `mix.ex` put the `ex_doc` library.
```
defp deps do
  [
    {:ex_doc, "~> 0.16"}
  ]
end
```

Then generate the documentation on the `doc/` folder:
```
$ mix docs
```


## Run tests
There are two ways to run tests. The first one is use the `ExUnit` built-in framework with:

```
$ mix test
```

And the second one with the `Espec` library added to the project, this is BDD:

```
$ mix espec
```

Run a specific spec:

```
$ mix espec spec/some_spec.exs:25
```