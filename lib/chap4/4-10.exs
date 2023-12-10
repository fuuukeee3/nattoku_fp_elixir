defmodule Chap4 do
  def score(word) do
    word |> String.replace("a", "") |> String.length()
  end

  def score_with_bonus(word) do
    if String.contains?(word, "c"), do: score(word) + 5, else: score(word)
  end

  def score_with_bonus_and_penalty(word) do
    if String.contains?(word, "s") do
      score_with_bonus(word) - 7
    else
      score_with_bonus(word)
    end
  end

  def ranked_words(score_func, words) do
    words |> Enum.sort(&(score_func.(&2) <= score_func.(&1)))
  end
end

words = ["ada", "haskell", "scala", "java", "rust"]
IO.inspect(Chap4.ranked_words(&Chap4.score/1, words))
IO.inspect(Chap4.ranked_words(&Chap4.score_with_bonus/1, words))
IO.inspect(Chap4.ranked_words(&Chap4.score_with_bonus_and_penalty/1, words))
