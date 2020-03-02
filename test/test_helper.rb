require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'
require 'minitest/benchmark'

_stderr, $stderr = $stderr, StringIO.new
require 'openstudio'
$stderr = _stderr

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new , Minitest::Reporters::RubyMineReporter.new]

require_relative '../lib/eplusout'
require_relative 'fixtures/array_gateway'

include Minitest