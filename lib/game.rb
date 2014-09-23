

class Game
  attr_reader :guess,
              :turns,
              :random_array,
              :color_selection,
              :display,
              :command

  def initialize(display)
    @guess         = 0
    @turns         = 0
    @display       = display
    @command       = ""
    @color_selection = ['r','g','b','y']
  end

  def play
    display.game_intro
    until win? || exit?
      display.turn_indicator(turns)
      display.game_command_request
      @command = gets.strip
      @guess   = command.to_i
      process_game_turn
    end
  end

  def match?
    random_array == guess
  end

  def player_guess(guess)
    add_turn
    a = random_array
    b = guess.new
    a.zip(b)

#  b.chars --this will put the inputed string into array form
# class CodeMaker
#
#     attr_reader :code
#
#     def initialize(code = nil)
#       @code = code || generate_code
#     end
#
#     def compare(guess)
#       if code == guess
#         correct_colors_in_right_spaces = 4
#       else
#         correct_colors_in_right_spaces = 0
#       end
#
#       [correct_colors_in_right_spaces, 0]
#     end
#
#     def generate_code
#       colors = %W(r g b y)
#       4.times.map {colors.sample}.join
#     end
#
# end



    # -need a counter for each guess
    # you need to compare player guess to computer generated code
    # you need to have the loop continue if the guess doesn't = GC
    # you need to be able to split the array into single strings to compare
       #the individaul guess strings to the GC strings.
    #this is going to work for the colors... but not for the position

    #now you need to compare positions, you will need each_with_index to compare the 0,1,2,3 etc.
    #places of each string returned.  GL!
  end

  private

  def process_game_turn
    random_array
    case
    when exit?
      display.game_quit
    when win?
      display.game_win
    when not_a_valid_letter?
      display.not_a_valid_command
    end
  end

  def color_selection
    @color_selection
  end

  def random_array
    (0..3).map do color_selection.sample
    end.join
  end

  def add_turn
    @turns += 1
  end

  def win?
    guess == random_array
  end

  def exit?
    command == "q" || command == "quit"
  end
end
