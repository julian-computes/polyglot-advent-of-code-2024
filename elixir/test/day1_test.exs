defmodule Day1Test do
  use ExUnit.Case

  alias Day1

  @moduletag :capture_log

  doctest Day1

  test "day 1 part 1 example" do
    {:ok, input} = File.read("examples/example1")
    assert Day1.day1_part1(input) == 11
  end

  test "day 1 part 1" do
    {:ok, input} = File.read("inputs/input1")
    IO.puts(Day1.day1_part1(input))
  end

  test "day 1 part 2 example" do
    {:ok, input} = File.read("examples/example1")
    out = Day1.day1_part2(input)
    assert out == 31
  end

  test "day 1 part 2" do
    {:ok, input} = File.read("inputs/input1")
    IO.puts(Day1.day1_part2(input))
  end
end
