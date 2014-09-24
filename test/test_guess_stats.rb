
require 'minitest/autorun'             # => true
# require 'minitest/pride'               # => true
require_relative '../lib/guess_stats'  # => true

class TestGuessStatsCorrectSpotAndColor < Minitest::Test
  def assert_correct_spot_and_color(actual_colors, guessed_colors, num)
    stats = GuessStats.new(actual_colors, guessed_colors)                # => #<GuessStats:0x007ff791032010 @actual_colors="gyrg", @guessed_colors="gyrb">, #<GuessStats:0x007ff79102a158 @actual_colors="rrrr", @guessed_colors="rrrr">, #<GuessStats:0x007ff791029a00 @actual_colors="rrrr", @guessed_colors="rrrg">, #<GuessStats:0x007ff791029230 @actual_colors="rrrr", @guessed_colors="rrgg">, #<GuessStats:0x007ff791028ad8 @actual_colors="rrrr", @guessed_colors="rggg">, #<GuessStats:0x007ff791028358 @actual_colors="rrrr", @guessed_colors="gggg">, #<GuessStats:0x007ff79102a810 @actual_colors="rrrg", @guessed_colors="gggr">, #<GuessStats:0x007ff7910197b8 @actual_colors="X", @guessed_colors="X">, #<GuessStats:0x007ff7920a1180 @actual_colors="r", @guessed_colors="r">
    assert_equal num, stats.correct_spot_and_color                       # => true, true, true, true, true, true, true
  end

  def test_works_on_any_length
    assert_correct_spot_and_color "r", "r", 1
    assert_correct_spot_and_color "rrrrrr", "rrrrrr", 6
  end

  def test_works_with_strange_values
    assert_correct_spot_and_color "X", "X", 1
  end

  def test_some_examples
    assert_correct_spot_and_color "rrrr", "rrrr", 4  # => true
    assert_correct_spot_and_color "rrrr", "rrrg", 3  # => true
    assert_correct_spot_and_color "rrrr", "rrgg", 2  # => true
    assert_correct_spot_and_color "rrrr", "rggg", 1  # => true
    assert_correct_spot_and_color "rrrr", "gggg", 0  # => true
    assert_correct_spot_and_color "rrrg", "gggr", 0  # => true
  end

  def test_one_incorrect
    assert_correct_spot_and_color "gyrg", "gyrb", 3  # => true
  end
end


class TestGuessStatsCorrectColorIncorrectSpot < Minitest::Test
  def assert_correct_color_incorrect_spot(actual_colors, guessed_colors, num)
    stats = GuessStats.new(actual_colors, guessed_colors)                      # => #<GuessStats:0x007ff79206a748 @actual_colors="gyrg", @guessed_colors="gyrb">, #<GuessStats:0x007ff792042ba8 @actual_colors="rrrr", @guessed_colors="rrrr">
    assert_equal num, stats.correct_color_incorrect_spot                       # => true
  end

  # Add examples for different length

  def test_some_examples
    assert_correct_color_incorrect_spot "rrrr", "rrrr", 4
    # more here
  end

  def test_guess_stats_are_in_incorrect_spots
    assert_correct_color_incorrect_spot "gyrg", "gyrb", 3  # => true
  end
end

# recommended
  "ryyr"
  "rrbb"

# and
  "ryyr"
  "rrby"


# >> Run options: --seed 44202
# >>
# >> # Running:
# >>
# >> ..FF.F
# >>
# >> Finished in 0.020613s, 291.0784 runs/s, 533.6438 assertions/s.
# >>
# >>   1) Failure:
# >> TestGuessStatsCorrectSpotAndColor#test_works_with_strange_values [/Users/kalahmac/Turing/mastermind/test/test_guess_stats.rb:18]:
# >> Expected: 1
# >>   Actual: 4
# >>
# >>
# >>   2) Failure:
# >> TestGuessStatsCorrectSpotAndColor#test_works_on_any_length [/Users/kalahmac/Turing/mastermind/test/test_guess_stats.rb:13]:
# >> Expected: 1
# >>   Actual: 4
# >>
# >>
# >>   3) Failure:
# >> TestGuessStatsCorrectColorIncorrectSpot#test_some_examples [/Users/kalahmac/Turing/mastermind/test/test_guess_stats.rb:45]:
# >> Expected: 4
# >>   Actual: 1
# >>
# >> 6 runs, 11 assertions, 3 failures, 0 errors, 0 skips
