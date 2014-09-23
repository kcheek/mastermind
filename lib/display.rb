class Display

  def intro
    puts "Hello, and welcome to MASTERMIND!!!!"
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
    puts "Have a lovely day!"
  end

  def game_intro
    puts "Great, let's do this."
    puts "Please guess four letters. (r)ed, (g)reen, (b)lue, (y)ellow"
  end

  def turn_indicator(turns)
    puts "You are on turn #{turns}."
  end

  def prompt_game_input
    print "Ok, this is your time to shine.  Show us what you've got and enter your guess: "
  end

  def game_quit
    puts "Goodbye, and have a lovely day."
  end

  def game_win
    puts "You're amazing! You win!"
  end

  def not_a_valid_command
    puts "I do not think that means what you think that means.
      Why don't you think about your life choices and try again."
    program_instructions
  end

  def guess_stats(stats)
    puts "Your guess of #{stats.input.inspect}"
    puts "has #{stats.correct_spot_and_color} colors in the correct spot"
    puts "and #{stats.correct_color_incorrect_spot} colors in the incorrect spot"
  end
end
