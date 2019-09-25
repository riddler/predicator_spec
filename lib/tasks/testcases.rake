require "pathname"
require_relative "../test_generator"

namespace :testcases do
  desc "Generate testcase classes from predicator_spec"
  task :generate do
    predicator_root = Pathname.new File.expand_path "../..", __dir__
    testcases_path = predicator_root.join "../predicator_spec"

    testcases_path.glob "evaluator/*.yml" do |file|
      generator = TestGenerator.new predicator_root, file
      generator.generate
    end
  end
end
