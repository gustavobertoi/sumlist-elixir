defmodule ListLength do
  def call(list), do: length(list, 0)

  defp length([], value) do
    value
  end

  defp length([_head | tail], value) do
    value = value + 1
    length(tail, value)
  end
end
