defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "return the list sum" do
      list = [1, 2, 3]
      response = ListLength.call(list)
      expected_response = 3
      assert response == expected_response
    end
  end
end
