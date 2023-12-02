defmodule Chap3 do
  def first_two(list), do: Enum.slice(list, 0, 2)

  def last_two(list), do: Enum.slice(list, -2, 2)

  def moved_first_tow_to_the_end(list) do
    [first, second | tail] = list
    # Elixirのリストは連結リストなので、末尾に追加するのはO(n)かかるからサイズが大きい場合は注意
    tail ++ [first, second]
  end

  def insertedBeforeLast(list, elem) do
    {rest, [last]} = Enum.split(list, Enum.count(list) - 1)
    rest ++ [elem, last]
#    [head | tail] = list |> Enum.reverse()
#    [head, elem | tail] |> Enum.reverse()
  end
end

Chap3.first_two(["a", "b", "c"]) |> IO.inspect()
Chap3.last_two(["a", "b", "c"]) |> IO.inspect()
Chap3.moved_first_tow_to_the_end(["a", "b", "c"]) |> IO.inspect()
Chap3.insertedBeforeLast(["a", "b"], "c") |> IO.inspect()