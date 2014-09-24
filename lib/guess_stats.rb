class GuessStats
  attr_reader :guessed_colors

  def initialize(actual_colors, guessed_colors)
    @actual_colors  = actual_colors
    @guessed_colors = guessed_colors
  end

  def unique(colors)
    colors.split("").uniq.join
  end

  def correct_guess_count
    unique(@actual_colors)
      .scan(Regexp.new("[#{unique(@guessed_colors)}]")).count
  end

  def correct_color_incorrect_spot
    @correct_count ||= correct_guess_count
  end

  def correct_spot_and_color
    remainder = 0
    (0..3).each do |index|
      if @guessed_colors[index] == @actual_colors[index]
        remainder += 1
      end
    end
    remainder
  end

end


# guess = GuessStats.new("gyrg", "gyrb")  # => #<GuessStats:0x007f8eda841d98 @actual_colors="gyrg", @guessed_colors="gyrb">
# guess.correct_color_incorrect_spot      # => 3

guess = GuessStats.new("rrrr", "rrrr")
guess.correct_color_incorrect_spot
