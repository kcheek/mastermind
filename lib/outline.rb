# due 1pm on thursday
#
# display, "Welcome to MASTERMIND"
# display, "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
# set p and play to start the game
# set i and instructions to show a short explanation of the game
# set q and quit to end the game
# set r and red to the color red
# set g and green to the color green
# set b and blue to the color blue
# set y and yellow to the color yellow
# display, "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.  What's your guess?"
# if it's longer than 4 letters tell them it's too long
# if it's shorter than 4 letters tell them it's too short
# display feedback on players guesses
# display congratulations message and amount of time it took them to guess
# display previous guesses with results every turn
# records previous guesses
# keep track of how many times they've guessed
# compare solution sequence to guess sequence
# randomly generate a sequence of 4
# prompt player to guess
# display how many colors were correct and how many colors were in the right position
# print time it took them to play
#
#
#
# mastermind.rb:
# -responsible for starting the game
# -makes a new instance of game.rb, calls start method
# -prints out all previous guesses w/ results every turn (thru record_keeper)
#
# game.rb
# -calls methods on other classes
#
# sequence_bot
# -generates solution sequence, based on difficulty level
#
#
# sequence_judge
# -checks input against solution sequence
# -makes sure input conforms to difficulty level
# -generates number of colors correct and/or in the correct position
#
# record_keeper
# -keeps record of previous guesses
#
#
# instructions
# -prints instructions
#
#
# NOTES
# Asterisks represent pins in real game
# Asterisks
# gem: terminal-table
# gem: rainbow
