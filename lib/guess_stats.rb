class GuessStats
  attr_reader :guessed_colors, 

  def initialize(actual_colors, guessed_colors)
    @actual_colors  = actual_colors
    @guessed_colors = guessed_colors
  end

  def correct_color_incorrect_spot
    @correct_count = correct_guess_count
  end

  def correct_spot_and_color
    @remainder = 0
    (0..3).each do |index|
      if @input[index] == secret_colors[index]
        @remainder += 1
      end
    end
    @remainder
  end

  def unique_guesses
    guessed_colors.uniq.join
  end

  def correct_guess_count
    unique_guesses.scan(Regexp.new("[#{secret_colors}]")).count
  end
end
