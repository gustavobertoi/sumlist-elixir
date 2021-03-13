defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return the quantity of how many odds has in a string list" do
      list = ["1", "2", "3", "4", "5", "6", "a", "b", "c", "d", "e"]
      response = ListFilter.call(list)
      expected_response = 3
      assert response == expected_response
    end
  end
end
