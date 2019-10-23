// This file is auto-generated.
// To make changes - look in scripts/generate-tests.js

const { PredicatorEvaluator } = require('../../src/predicator')

test('it evaluates nested_context with_no_context', () => {
  const evaluator = new PredicatorEvaluator(
    [["load","person.age"],["to_int"],["lit",13],["compare","GT"]],
    {});
  expect(evaluator.result()).toEqual(false);
  expect(evaluator.stack).toEqual([]);
})
test('it evaluates nested_context with_nested_hash', () => {
  const evaluator = new PredicatorEvaluator(
    [["load","person.age"],["to_int"],["lit",13],["compare","GT"]],
    {"person":{"age":20}});
  expect(evaluator.result()).toEqual(true);
  expect(evaluator.stack).toEqual([]);
})
