# frozen_string_literal: true

require 'simplecov'

SimpleCov.start do
  add_filter ['.bundle', 'lib/extensions', 'test']
end

require 'minitest/autorun'
require 'test/unit'
require 'rubygems'

require File.expand_path("#{File.dirname(__FILE__)}/../lib/faker/version")
