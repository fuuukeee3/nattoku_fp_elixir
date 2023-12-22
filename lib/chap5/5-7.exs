defmodule Book  do
  defstruct title: nil, authors: nil
end

defmodule Chap5 do
  def recommended_books(friend) do
    scala = [
      %Book{title: "FP in Scala", authors: ["Chiusano", "Bjarnason"]},
      %Book{title: "Get Programming with Scala", authors: ["Sfregola"]}
    ]

    fiction = [
      %Book{title: "Harry Potter", authors: ["Rowling"]},
      %Book{title: "The Lord of the Rings", authors: ["Tolkien"]}
    ]

    case friend do
      "Alice" -> scala
      "Bob" -> fiction
      _ -> []
    end
  end
end

["Alice", "Bob", "charlie"]
|> Enum.flat_map(&Chap5.recommended_books/1)
|> Enum.flat_map(&Map.get(&1, :authors))
|> IO.inspect()