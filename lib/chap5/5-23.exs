defmodule Point do
  defstruct x: 0, y: 0
end

defmodule Chap5 do
  def is_inside(point, radius) do
    radius * radius >= point.x * point.x + point.y * point.y
  end

  def points do
    [
      %Point{x: 5, y: 2},
      %Point{x: 1, y: 1}
    ]
  end

  def risky_radius do
    [-10, 0, 2]
  end

  def chap_5_23 do
    for r <- risky_radius(),
        p <- Enum.filter(points(), &(is_inside(&1, r)))  do
      "#{p.x}, #{p.y} is within a radius of #{r}"
    end
  end

  def chap_5_23_1 do
    for r <- Enum.filter(risky_radius(), &(&1 >= 0)),
        p <- Enum.filter(points(), &(is_inside(&1, r)))  do
      "#{p.x}, #{p.y} is within a radius of #{r}"
    end
  end

  def chap_5_23_2 do
    for r <- risky_radius(), r >= 0,
        p <- Enum.filter(points(), &(is_inside(&1, r)))  do
      "#{p.x}, #{p.y} is within a radius of #{r}"
    end
  end

  def validate_radius(radius) do
    if radius >= 0, do: [radius], else: []
  end

  def inside_filter(point, radius) do
    if is_inside(point, radius), do: [point], else: []
  end

  def chap_5_23_3 do
    for r <- risky_radius(),
        valid_radius <- validate_radius(r),
        p <- points(),
        in_point <- inside_filter(p, valid_radius) do
      "#{in_point.x}, #{in_point.y} is within a radius of #{r}"
    end
  end
end

Chap5.chap_5_23() |> IO.inspect()
Chap5.chap_5_23_1() |> IO.inspect()
Chap5.chap_5_23_2() |> IO.inspect()
Chap5.chap_5_23_3() |> IO.inspect()
