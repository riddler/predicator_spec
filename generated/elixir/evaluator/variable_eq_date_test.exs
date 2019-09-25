# AUTOGENERATED FILE - DO NOT EDIT
defmodule Predicator.VariableEqDateTest do
  use ExUnit.Case, async: false

  setup_all do
    %{instructions: [["load", "start_date"], ["to_date"], ["lit", "2017-09-10"], ["to_date"], ["compare", "EQ"]]}
  end

  test "with_no_context", context do
    predicate_context = nil
    expected_result = false

    result = Predicator.Evaluator.execute context[:instructions], predicate_context
    assert expected_result == result
    #assert_empty e.stack
  end

  test "with_blank_string", context do
    predicate_context = %{age: ""}
    expected_result = false

    result = Predicator.Evaluator.execute context[:instructions], predicate_context
    assert expected_result == result
    #assert_empty e.stack
  end

  test "with_correct_date_string", context do
    predicate_context = %{start_date: "2017-09-10"}
    expected_result = true

    result = Predicator.Evaluator.execute context[:instructions], predicate_context
    assert expected_result == result
    #assert_empty e.stack
  end

  test "with_incorrect_date_string", context do
    predicate_context = %{start_date: "2017-09-09"}
    expected_result = false

    result = Predicator.Evaluator.execute context[:instructions], predicate_context
    assert expected_result == result
    #assert_empty e.stack
  end

end
