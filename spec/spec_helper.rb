require "minitest-spec-context"

require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require "minitest/autorun"
