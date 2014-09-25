require 'minitest/autorun'
require_relative '../lib/input'

class TestInputValidity < Minitest::Test
  def test_it_can_tell_if_input_is_invalid
    good_input = Input.new("rrrr")
    bad_input = Input.new("xrrr")
    assert bad_input.invalid_input?
    refute good_input.invalid_input?
  end
end
