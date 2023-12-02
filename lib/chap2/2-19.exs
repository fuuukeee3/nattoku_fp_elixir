defmodule TipCalculator do
  def get_tip_percentage(names) when length(names) > 5, do: 20
  def get_tip_percentage(names) when length(names) > 0, do: 10
  def get_tip_percentage(_names), do: 0
end

IO.puts TipCalculator.get_tip_percentage([])
IO.puts TipCalculator.get_tip_percentage(["Alice", "Bob", "charlie"])
IO.puts TipCalculator.get_tip_percentage(["Alice", "Bob", "charlie", "Daniel", "Emily", "Frank"])
