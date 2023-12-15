larger_than = fn n ->
  fn i -> i > n end
end
[5, 1, 2, 4, 0] |> Enum.filter(larger_than.(4)) |> IO.inspect()
[5, 1, 2, 4, 0] |> Enum.filter(larger_than.(1)) |> IO.inspect()

divisible_by = fn n ->
  fn i -> rem(i, n) == 0 end
end
[5, 1, 2, 4, 15] |> Enum.filter(divisible_by.(5)) |> IO.inspect()
[5, 1, 2, 4, 15] |> Enum.filter(divisible_by.(2)) |> IO.inspect()

shorter_than = fn n ->
  fn s -> String.length(s) < n end
end
["scala", "ada"] |> Enum.filter(shorter_than.(4)) |> IO.inspect()
["scala", "ada"] |> Enum.filter(shorter_than.(7)) |> IO.inspect()

number_of_s = fn n ->
  fn s ->
    s |> String.codepoints() |> Enum.count(&(&1 == "s")) >= n
  end
end
["rust", "ada"] |> Enum.filter(number_of_s.(3)) |> IO.inspect()
["rust", "ada"] |> Enum.filter(number_of_s.(1)) |> IO.inspect()
