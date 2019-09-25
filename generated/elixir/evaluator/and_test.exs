# AUTOGENERATED FILE - DO NOT EDIT
defmodule Predicator.AndTest do
  use ExUnit.Case, async: false

  setup_all do
    %{instructions: [["lit", true], ["jfalse", 2], ["lit", true]]}
  end

  test "with_no_context", context do
    predicate_context = nil
    expected_result = true

    result = Predicator.Evaluator.execute context[:instructions], predicate_context
    assert expected_result == result
    #assert_empty e.stack
  end

end
