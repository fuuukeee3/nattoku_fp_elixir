IO.inspect(["scala", "rust", "ada"] |> Enum.map(&String.length/1))
IO.inspect(
  ["rust", "ada"]
  |> Enum.map(fn s ->
    String.graphemes(s)
    |> Enum.count(fn s -> s == "s" end)
  end)
)

IO.inspect([5, 1, 2, 4, 0] |> Enum.map(&(-&1)))
IO.inspect([5, 1, 2, 4, 0] |> Enum.map(&(&1 * 2)))
