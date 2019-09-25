require "pathname"
require_relative "../test_generator"

namespace :testcases do
  desc "Generate testcase classes from predicator_spec"
  task :generate do
    TestGenerator.generate
  end
end
