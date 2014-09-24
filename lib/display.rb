class Display

  def intro
    puts "Hello, and welcome to ***M-A-S-T-E-R-M-I-N-D!!!!***"
    program_instructions
  end

  def program_instructions
    puts "Enter 'p' or 'play' to play, 'i' or 'instructions' for instructions, or 'q' or 'quit' to quit."
  end

  def command_request
    print "Please enter your command: "
  end

  def game_instructions
    puts "Hello, you must be new to mastermind.  Let me fill you in on a few instructions.
      The computer will randomly select four colors for you to guess.  The colors are (r)ed,
      (b)lue, (g)reen, and (y)ellow.  There may be duplicates, or only one of each.  Your mission
      is to determine the computer's combination by inputing any combination of the four colors
      listed above.  Good luck!"
  end

  def ending
    puts "Goodbye, and have a lovely day!"
  end

  def game_intro
    puts "Please guess four letters. (r)ed, (g)reen, (b)lue, (y)ellow"
  end

  def turn_indicator(turns)
    puts "You are on turn #{turns}."
  end

  def prompt_game_input
    print "Ok, this is your time to shine.  Enter your guess: "
  end

  def game_quit
    puts "You have ended your game. Would you like to read the 'i'nstructions, 'p'lay again, or 'q'uit "
  end

  def game_win
    puts "You're amazing! You win!"
  end

  def not_a_valid_command
    puts "I do not think that means what you think that means.
      Why don't you think about your life choices and try again."
  end

  def total_time(minutes_time, seconds_time)
    puts "It took you #{minutes_time} minutes and #{seconds_time} seconds to complete your game."
  end

  def print_guess_stats(stats)
    puts "You guessed #{stats.guessed_colors}."
    puts "You have #{stats.correct_color_incorrect_spot} correct elements"
    puts "with #{stats.correct_spot_and_color} in the correct position."
  end
end
