require 'minitest/autorun'
# require 'minitest/pride'
require_relative '../lib/guess_stats'

class TestGuessStatsCorrectSpotAndColor < Minitest::Test
  def assert_correct_spot_and_color(actual_colors, guessed_colors, num)
    stats = GuessStats.new(actual_colors, guessed_colors)
    assert_equal num, stats.correct_spot_and_color
  end

  def test_works_with_strange_values
    skip
    assert_correct_spot_and_color "rrrr", "xxxx", 0
    assert_correct_spot_and_color "rrrr", "xxxr", 0
  end

  def test_some_examples
    assert_correct_spot_and_color "rrrr", "rrrr", 4
    assert_correct_spot_and_color "rrrr", "rrrg", 3
    assert_correct_spot_and_color "rrrr", "rrgg", 2
    assert_correct_spot_and_color "rrrr", "rggg", 1
    assert_correct_spot_and_color "rrrr", "gggg", 0
    assert_correct_spot_and_color "rrrg", "gggr", 0
  end

  def test_one_incorrect
    assert_correct_spot_and_color "gyrg", "gyrb", 3
  end
end


class TestGuessStatsCorrectColorIncorrectSpot < Minitest::Test
  def assert_correct_color_incorrect_spot(actual_colors, guessed_colors, num)
    stats = GuessStats.new(actual_colors, guessed_colors)
    assert_equal num, stats.correct_color_incorrect_spot
  end

  def test_some_examples
    assert_correct_color_incorrect_spot "rybg", "gbyr", 4
    assert_correct_color_incorrect_spot "rybg", "rrrr", 1
    assert_correct_color_incorrect_spot "rrgg", "rggg", 2
    assert_correct_color_incorrect_spot "rbgg", "gggg", 1
    assert_correct_color_incorrect_spot "rrrg", "gggr", 2
  end

  def test_guess_stats_are_in_incorrect_spots
    assert_correct_color_incorrect_spot "gyrg", "gyrb", 3
  end
end

class TestInputValidity < Minitest::Test
    def test_it_can_tell_if_input_is_invalid
      good_input = "rrrr"
      bad_input = "xrrr" 
    end
