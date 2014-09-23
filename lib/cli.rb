class Cli
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
