# records previous guesses
# keep track of how many times theyve guessed
# compare solution sequence to guess sequence
# randomly generate a sequence of 4
# prompt player to guess
# display how many colors were correct and how many colors were in the right position
# print time it took them to play

class RecordKeeper
  attr_reader :command, :display

  def initialize(display)
    @command = ''
    @display = display
  end

  def start
    display.intro
    until finished?
      display.command_request
      @command = gets.strip
      process_command
    end
  end

  private

  def process_command
    case
    when play?
      Game.new(display).play
    when instructions?
      display.game_instructions
    when finished?
      display.ending
    else
      display.not_a_valid_command
    end
  end

  def play?
    command == "p" || command == "play"
  end

  def instructions?
    command == "i" || command == "instructions"
  end

  def finished?
    command == "q" || command == "quit"
  end
end
