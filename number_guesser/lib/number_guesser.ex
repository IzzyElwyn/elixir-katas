defmodule NumberGuesser do
  def play() do
    generate_random_number()
    |> prompt_guess()
  end

  defp generate_random_number() do
    Enum.random([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  end

  defp prompt_guess(number) do
    IO.puts("I'm thinking of a number between 1 and 10... can you guess the number?")

    guess = get_guess()

    handle_guess(number, guess)
  end

  defp handle_guess(number, guess) when number == guess do
    IO.puts("Yep! #{number} was my number ^_^ ")
  end

  defp handle_guess(number, _guess) do
    IO.puts("Nope, wrong number... guess again?")

    continue?()
    |> if do
      prompt_guess(number)
    else
      "better luck next time..."
    end
  end

  defp get_guess() do
    IO.gets("What is my number? ") |> String.trim() |> String.to_integer()
  end

  defp continue?() do
    play_on = IO.gets("y or n? ") |> String.downcase() |> String.trim()

    if play_on == "y" do
      true
    end
  end
end
