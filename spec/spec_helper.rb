require 'rspec'
require 'codeclimate-test-reporter'
require 'coveralls'

$:.unshift(File.dirname(__FILE__) + '../lib')

Coveralls.wear!
CodeClimate::TestReporter.start
