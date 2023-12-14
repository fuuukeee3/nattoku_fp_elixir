["scala", "rust", "ada"]
|> Enum.filter(&(String.length(&1) < 5))
|> IO.inspect()

["rust", "ada"]
|> Enum.filter(fn s ->
  String.length(s) - (String.replace(s, "s", "") |> String.length()) >= 3
end)
|> IO.inspect()

[5, 1, 2, 4, 0]
|> Enum.filter(&(rem(&1, 2) == 0))
|> IO.inspect()

[5, 1, 2, 4, 0]
|> Enum.filter(&(&1 > 4))
|> IO.inspect()
