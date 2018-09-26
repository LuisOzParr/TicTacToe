require 'tic_tac_toe_oz'
require 'interface'


system('cls')
puts "How many rows and cols do you want the board to have? (3 or more)"
#Get size of the matrix (Board of game)
size  = gets.chomp.to_i
# We instance the class Game and set size of the matrix
@game = TicTacToe::Game.new(size)
@board = Interface::Board.new
# We declare x and y
x=0
y=0
want_play = 'y'
flag_first_game = true

def play
  begin
    # Print the matrix (board) [first all are nil].
    #
    # We can use the gem Interface::Board and the method .create_board(Array)
    # to print the board prettier but you'll need install the game "Interface"
    # more info here: TODO PUT MORE INFO
    @board.create_board(@game.matrix)

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
    # one player win. if someone win the method return true and save the winner in a
    # property of the class
  end until @game.play_game(x, y)
end

while want_play == 'y'

  unless flag_first_game
    @game.change_turn
    @game.reset
  end
  flag_first_game = false

  play

  unless @game.winner.nil?
    puts @game.winner.nil? ? 'Game Over' : "THE WINNER IS PLAYER #{@game.winner}"
    @game.reset
  end

  puts "Do you want play? (y/n)"
  want_play = gets.chomp.to_s
  system('cls')
end

# Return winner


