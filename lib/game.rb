class Game
  attr_reader :turns,
              :color_selection,
              :display,
              :input,
              :secret_colors

  def initialize(display)
    @turns           = 0
    @display         = display
    @input           = Input.new
    @color_selection = ['r','g','b','y']
    @secret_colors   = (0..3).map { color_selection.sample }.join
    @start_time      = Time.now
  end

  def play
    display.game_intro
    loop do
      display.turn_indicator(turns)
      display.prompt_game_input
      @input.input = gets.strip.downcase
      if input.exit?
        display.game_quit
        break
      elsif input.invalid_guess?
        display.not_a_valid_command
      elsif input.invalid_input?
        display.not_a_valid_command
      elsif win?
        increment_turn
        display.game_win
        display.turn_indicator(turns)
        total_time = (Time.now - @start_time).to_i
        minutes_time = total_time / 60
        seconds_time = total_time % 60
        display.total_time(minutes_time, seconds_time)
        break
      else
        increment_turn
        display.print_guess_stats(guess_stats)
      end
    end
  end

  private

  def increment_turn
    @turns += 1
  end

  def win?
    input.input == secret_colors
  end

  def guess_stats
    GuessStats.new(secret_colors, input.input)
  end
end
