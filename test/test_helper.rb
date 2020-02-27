require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'
require 'minitest/benchmark'
require 'openstudio'

#Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new , Minitest::Reporters::RubyMineReporter.new]

require_relative '../lib/eplusout'

include Minitest