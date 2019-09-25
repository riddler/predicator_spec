require "erb"
require "json"
require "yaml"

class TestGenerator
  include ERB::Util
  attr_reader :project_root, :spec_path, :input_filename, :test_case

  def self.generate
    EvaluatorTestGenerator.generate
  end

  private

  def render template
    ERB.new(template).result(binding)
  end

  def classify string
    string.to_s.split('_').collect!{ |w| w.capitalize }.join
  end

  def elixir_hash hash
    symbolized_keys_hash = hash.transform_keys {|k| k.to_sym}
    hash_string = symbolized_keys_hash.to_s
      .gsub(/=>/, ": ")
      .gsub(/([{\s]):/, '\1')
    "%#{hash_string}"
  end
end

require_relative "./evaluator_test_generator"
