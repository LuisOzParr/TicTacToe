# TicTacToe

Welcome to gem Tic Tac Toe. This gem contain the logic of the game Tic Tac Toe, with it you can create terminal game Tic Tac Toe in an easy and fast way.

## Installation

Download this repository. Open the main folder and run the next command in the console

```gem build tic_tac_toe_oz.gemspec```

After run this command 

```gem install ./tic_tac_toe_oz-0.0.1.gem```

## Usage

Example
```
require 'tic_tac_toe_oz'

system('cls')
puts "How many rows and cols do you want the board to have? (3 or more)"
#Get size of the matrix (Board of game)
size  = gets.chomp.to_i
# We instance the class Game and set size of the matrix
game = TicTacToe::Game.new(size)
# We declare x and y
x=0
y=0

begin
  # Print the matrix (board) [first all are nil].
  #
  # We can use the gem Interface::Board and the method .create_board(Array)
  # to print the board prettier but you'll need install the game "Interface"
  # more info here: https://github.com/LuisOzParr/Console_Interface 
  game.print_matrix

  #We ask the player to enter the coordinates x and y. These coordinates is the cell
  # in the player put her symbol (X or O)
  print "Set coordinate in X: "
  x = gets.chomp.to_i
  print "Set coordinate in Y: "
  y = gets.chomp.to_i

  #clear the screen
  system('cls')

  # Repeat this until game.play_game(x, y) return true
  # 
  # play_game(x,y) is the method that implement the logic of this game and check if 
  # one player win. 
  # Return true if someone win or the board is full. 
  # Also save the winner in a property winner.
end until game.play_game(x, y)

game.print_matrix

# Return winner
puts puts game.winner.nil? ? 'Game Over' : "THE WINNER IS PLAYER #{game.winner}"

```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/LuisOzParr/TicTacToe. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

