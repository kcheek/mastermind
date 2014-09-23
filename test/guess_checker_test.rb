gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess_checker'

class GuesscheckerTest < Minitest::Test

  def test_if_game_is_getting_four_letters
    skip
    guesschecker = Guesschecker.new
    assert_equal "rrrr", guesschecker.color_selection
  end

  def test_if_game_is_only_getting_correct_colors
    guesschecker = Guesschecker.new
    puts guesschecker.color_selection
  end

  def test_if_game_is_pulling_random_letters
  skip
    guesschecker = Guesschecker.new
˜
  end

  def test_if_game_is_accepting_player_input
  skip
    guesschecker = Guesschecker.new
  end

  def test_if_game_is_compairing_player_input_to_original_letters
  skip
    guesschecker = Guesschecker.new
  end

  def test_letters_are_not_case_sensative
    skip
    guesschecker = Guesschecker.new
  end

end
