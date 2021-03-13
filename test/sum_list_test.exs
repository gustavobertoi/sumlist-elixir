defmodule SumListTest do
  use ExUnit.Case

  describe "call/1" do
    test "return the list sum" do
      list = [1, 2, 3]
      response = SumList.call(list)
      expected_response = 6
      assert response == expected_response
    end
  end

  describe "call_enum/1" do
    test "returns a new list using the pattern matching" do
      list = %{a: 1, b: 2, c: 3}
      response = SumList.call_enum(list)
      expected_response = [2, 3, 4]
      assert response == expected_response
    end
  end
end
