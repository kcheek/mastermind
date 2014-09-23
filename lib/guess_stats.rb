class GuessStats

  def initialize(actual_colors, guessed_colors)
    @actual_colors  = actual_colors
    @guessed_colors = guessed_colors
  end

  def correct_spot_and_color
    @remainder = []
    (0..3).each do |index|
      if @input[index] == secret_guess [index]
        @remainder << "true"
      end
    end
    @remainder.count
  end

  def correct_color_incorrect_spot
    @remainder.scan('y', 'r', 'b', 'g').count
    # @reminder.index('y', 'r', 'b', 'g')
  end
end

# code,chars,count,
  # stats.incorrect_spot
  # stats.incorrect_color
  # stats.correct_spot
