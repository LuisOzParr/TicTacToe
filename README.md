# TicTacToe

Welcome to gem Tic Tac Toe. This gem contain the logic of the game Tic Tac Toe, with it you can create terminal game Tic Tac Toe in an easy and fast way.

## Rules

1. Two players represented with X and O
2. First time the game is played, X starts
3. Each player alternate turns to put a mark in the board on any available slot
4. The game ends when either one of the players matches three marks in a horizontal, vertical or diagonal row or there are no more moves available
5. Once the game finishes, players are asked if they want to play again. If they do, the player who lost the previous match starts. In case of a draw, the player who did the second-to-last movement starts

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tic_tac_toe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tic_tac_toe

## Usage

Example
```
require 'tic_tac_toe'

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
puts "THE WINNER IS PLAYER #{game.winner}"

```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/LuisOzParr/tic_tac_toe. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

