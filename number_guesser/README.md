# NumberGuesser

Just a very short silly little guessing game. 

To play: 
```
iex -S mix 
NumberGuesser.play()
```

Currently does not handle entry of 'bad' data. (if you enter anything other than a number for your guess or anything other than y or n for trying again, it throws up)


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `number_guesser` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:number_guesser, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/number_guesser](https://hexdocs.pm/number_guesser).

