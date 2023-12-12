defmodule Chap4 do
  def score(word) do
    word |> String.replace("a", "") |> String.length()
  end

  def bonus(word) do
    if String.contains?(word, "c"), do: 5, else: 0
  end

  def penalty(word) do
    if String.contains?(word, "s"), do: 7, else: 0
  end

  def ranked_words(score_func, words) do
    words |> Enum.sort(&(score_func.(&2) <= score_func.(&1)))
  end
end

words = ["ada", "haskell", "scala", "java", "rust"]
score = &Chap4.score/1
bonus = &Chap4.bonus/1
penalty = &Chap4.penalty/1
IO.inspect(Chap4.ranked_words(&(score.(&1)), words))
IO.inspect(Chap4.ranked_words(&(score.(&1) + bonus.(&1)), words))
IO.inspect(Chap4.ranked_words(&(score.(&1) + bonus.(&1) - penalty.(&1)), words))
