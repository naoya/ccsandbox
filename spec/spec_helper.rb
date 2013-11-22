require 'rspec'
require 'codeclimate-test-reporter'

$:.unshift(File.dirname(__FILE__) + '../lib')
CodeClimate::TestReporter.start
