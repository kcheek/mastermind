
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess_stats'

class TestGuessStatsCorrectSpot < Minitest::Test
  def assert_correct_spot_and_color(actual_colors, guessed_colors, num_in_correct_spot)
    stats = GuessStats.new(actual_colors, guessed_colors)
    assert_equal num_in_correct_spot, stats.correct_spot
  end

  def test_all_correct
    stats = GuessStats.new
    assert_correct_spot "rrrr", "rrrr", 4
  end
end

class TestGuessStatsIncorrectSpots
  def test_guess_stats_are_in_incorrect_spots

  end
end

class TestGuessStatsIncorrectColor
  def test_guess_stats_are_incorrect_color
  end
end
