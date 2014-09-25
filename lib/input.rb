class Input

  attr_accessor :input

  def initialize(input = "")
    @input = input
  end

  def exit?
    input == "q" || input == "quit"
  end

  def invalid_guess?
    input_too_long? || input_too_short?
  end

  def invalid_input?
    input.scan(/[^rgbyq]/).count > 0
  end

  def input_too_long?
    input.length > 4
  end

  def input_too_short?
    input.length < 4
  end

end
