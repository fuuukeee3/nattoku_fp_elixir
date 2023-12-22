defmodule Point do
  defstruct x: 0, y: 0
end

defmodule Chap5 do
  def chap5_7() do
    [1, 2]
    |> Enum.flat_map(fn x ->
      [-2, 7]
      |> Enum.map(fn y ->
        %Point{x: x, y: y}
      end)
    end)
  end
end

Chap5.chap5_7() |> IO.inspect()
