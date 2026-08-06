# frozen_string_literal: true

require_relative '../test_helper'

class TestFakerVersion < Test::Unit::TestCase
  def test_version_is_defined
    assert defined?(Faker::VERSION)
  end

  def test_version_is_a_string
    assert_instance_of String, Faker::VERSION
  end

  def test_version_matches_semver_format
    assert_match(/\A\d+\.\d+\.\d+\z/, Faker::VERSION)
  end

  def test_version_matches_gemspec
    gemspec_path = File.expand_path('../../faker.gemspec', __dir__)
    spec = Gem::Specification.load(gemspec_path)
    assert_equal spec.version.to_s, Faker::VERSION
  end
end
