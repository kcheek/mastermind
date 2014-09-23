#

class Game
  attr_reader :turns,
              :color_selection,
              :display,
              :input,
              :secret_colors

  def initialize(display)
    @turns           = 0
    @display         = display
    @input           = ""
    @color_selection = ['r','g','b','y']
    @secret_colors   = (0..3).map { color_selection.sample }.join
  end

  def play
    display.game_intro
    loop do
      increment_turn
      display.turn_indicator(turns)
      display.prompt_game_input
      @input = gets.strip.downcase
      if exit?
        display.game_quit
        break
      elsif win?
        display.game_win # display # of turns & amt of time
        break
      elsif invlaid_guess?
        display.not_a_valid_command
      else
        display.print_guess_stats(guess_stats)
      end
    end
  end

  private

  def increment_turn
    @turns += 1
  end

  def win?
    input == secret_colors
  end

  def exit?
    input == "q" || input == "quit"
  end

  # true if any of the characters they entered is not in color_selection
  def invlaid_guess?
    raise "Implement me!"
  end

  def guess_stats
    GuessStats.new(secret_colors, input)
  end
end
