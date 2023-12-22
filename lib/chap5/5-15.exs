defmodule Point do
  defstruct x: 0, y: 0
end

defmodule Point3D do
  defstruct x: 0, y: 0, z: 0
end

defmodule Chap5 do
  def chap5_15() do
    xs = [1]
    ys = [-2, 7]

    for x <- xs, y <- ys, do: %Point{x: x, y: y}
  end

  def chap5_15_3d() do
    xs = [1]
    ys = [-2, 7]
    zs = [3, 4]

    for x <- xs, y <- ys, z <- zs, do: %Point3D{x: x, y: y, z: z}
  end
end

Chap5.chap5_15() |> IO.inspect()
Chap5.chap5_15_3d() |> IO.inspect()

