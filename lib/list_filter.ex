require Integer
require Enum

require ListLength

defmodule ListFilter do
  def call(list), do: filterIntegers(list) |> filterOdd() |> ListLength.call()

  defp filterOdd(list), do: Enum.filter(list, fn value -> Integer.is_odd(value) end)

  defp filterIntegers(list) do
    Enum.flat_map(list, fn value ->
      case Integer.parse(value) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end
end
