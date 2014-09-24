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
    @start_time      = Time.new
    @end_time        = Time.new
  end

  def play
    display.game_intro
    loop do
      increment_turn
      @start_time
      display.turn_indicator(turns)
      display.prompt_game_input
      @input = gets.strip.downcase
      if exit?
        display.game_quit
        break
      elsif win?
        display.game_win
        display.turn_indicator(turns)
        @end_time
        total_time = end_time - start_time
        display.total_time
        break
      elsif invalid_guess?
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

  def invalid_guess?
    input_too_long || input_too_short
  end

  def input_too_long
    input.length > 4
  end

  def input_too_short
    input.length < 4
  end


  def guess_stats
    GuessStats.new(secret_colors, input)
    
  end
end
