defmodule Day1 do
  def make_pairs(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&String.split(&1, " ", trim: true))
    |> Enum.map(fn [num1, num2] ->
      {String.to_integer(num1), String.to_integer(num2)}
    end)
  end

  def day1_part1(input) do
    {col1, col2} =
      make_pairs(input)
      |> Enum.unzip()

    Enum.zip(Enum.sort(col1), Enum.sort(col2))
    |> Enum.map(fn {num1, num2} -> abs(num1 - num2) end)
    |> Enum.sum()
  end

  def day1_part2(input) do
    {col1, col2} =
      make_pairs(input)
      |> Enum.unzip()

    frequencies = Enum.frequencies(col2)

    col1
    |> Enum.map(&(Map.get(frequencies, &1, 0) * &1))
    |> Enum.sum()
  end
end
