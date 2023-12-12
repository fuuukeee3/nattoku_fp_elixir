fn1 = &(String.length(&1))
IO.inspect(["scala", "rust", "ada"] |> Enum.sort_by(fn1))

#fn2 = fn(word) -> String.length(word) - String.length(String.replace(word, "s", "")) end
fn2 = &(String.length(&1) - String.length(String.replace(&1, "s", "")))
IO.inspect(["rust", "ada"] |> Enum.sort_by(fn2))

fn3 = &(-&1)
IO.inspect([5, 1, 2, 4, 3] |> Enum.sort_by(fn3))

fn4 = &(-(String.length(&1) - String.length(String.replace(&1, "s", ""))))
IO.inspect(["ada", "rust"] |> Enum.sort_by(fn4))

