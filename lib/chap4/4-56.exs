[5, 1, 2, 4, 100] |> Enum.reduce(0, fn x, acc -> x + acc end) |> IO.inspect()

["scala", "rust", "ada"] |> Enum.reduce(0, fn x, acc -> String.length(x) + acc end) |> IO.inspect()

count_s = fn s ->
  s
  |> String.codepoints()
  |> Enum.count(fn c -> c == "s" end)
end
["scala", "haskell", "rust", "ada"] |> Enum.reduce(0, fn x, acc -> count_s.(x) + acc end) |> IO.inspect()

[1, 1, 2, 4, 15] |> Enum.reduce(0, fn x, max -> if x > max, do: x, else: max end) |> IO.inspect()