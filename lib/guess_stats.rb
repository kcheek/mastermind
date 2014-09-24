class GuessStats
  attr_reader :guessed_colors  # => nil

  def initialize(actual_colors, guessed_colors)
    @actual_colors  = actual_colors              # => "rrrr"
    @guessed_colors = guessed_colors             # => "rrrr"
  end

  def correct_color_incorrect_spot
    @correct_count ||= correct_guess_count  # => 1
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

  private  # => GuessStats

  def unique(colors)
    colors.split("").uniq.join  # => "r", "r"
  end

  def correct_guess_count
    unique(@actual_colors)                          # => "r"
      .scan(
        Regexp.new("[#{unique(@guessed_colors)}]")  # => /[r]/
      )                                             # => ["r"]
      .count                                        # => 1
  end
end

# guess = GuessStats.new("gyrg", "gyrb")  # => #<GuessStats:0x007f8eda841d98 @actual_colors="gyrg", @guessed_colors="gyrb">
# guess.correct_color_incorrect_spot      # => 3

guess = GuessStats.new("rrrr", "rrrr")  # => #<GuessStats:0x007ffea8845e78 @actual_colors="rrrr", @guessed_colors="rrrr">
guess.correct_color_incorrect_spot      # => 1
