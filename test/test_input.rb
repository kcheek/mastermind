require 'minitest/autorun'       # => true
require_relative '../lib/input'  # => true

class TestInputValidity < Minitest::Test
  def test_it_can_tell_if_input_is_invalid
    good_input = Input.new("rrrr")          # => #<Input:0x007f9182042fc0 @input="rrrr">
    bad_input = Input.new("xrrr")           # => #<Input:0x007f9182042b10 @input="xrrr">
    assert bad_input.invalid_input?         # => true
    refute good_input.invalid_input?        # => false
  end
end

# >> Run options: --seed 7517
# >>
# >> # Running:
# >>
# >> .
# >>
# >> Finished in 0.001250s, 800.0000 runs/s, 1600.0000 assertions/s.
# >>
# >> 1 runs, 2 assertions, 0 failures, 0 errors, 0 skips
