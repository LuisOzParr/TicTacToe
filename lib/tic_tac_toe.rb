require 'tic_tac_toe/version'

module TicTacToe
  # DOCUMENTATION IN README.md
  class Game
    # GETTERS
    attr_reader :matrix, :winner

    def initialize(size)
      @size = size < 3 ? 3 : size
      @matrix = Array.new(@size) { Array.new(@size) }
      @win_with = @size > 3 ? 4 : 3
      @turn = 'X'
      @winner = nil
    end

    # Method that start the game, the first player is "X"
    # receives coordinates x and y
    def play_game(x, y)
      if fill_matrix(x, y, @turn)
        if is_win(x, y, @turn)
          @winner = @turn
          return true
        end
        change_turn
      else
        puts 'The coordinate dont exist or already has dates, choose other'
      end
      false
    end

    # Print Matrix
    def print_matrix
      (0..@matrix.length).each {|i| print "#{matrix[i]} \n"}
    end

    private

    # Change turn "x" to "o" and vice versa
    def change_turn
      @turn = @turn == 'X' ? 'O' : 'X'
    end

    # fill matrix by coordinates (x,y). accept data if cell is null and exist
    def fill_matrix(x, y, data)
      if validate_xy(x, y) && @matrix[y][x].nil?
        @matrix[y][x] = data
        return true
      end
      false
    end

    # Validate that "x" or "y" don't have a higher or lower rank that matrix
    def validate_xy(x, y)
      (x >= 0 && y >= 0) && (x <= @size - 1 && y <= @size - 1)
    end

    # Check if payer is winner
    def is_win(x, y, player)
      create_pivot_vectors(x, y)

      # TODO: parameter key not used (fix)
      @moves.each do |key, array|
        win3 = 0
        array.each do |key, val|
          if val == player
            win3 += 1
            return true if win3 == @win_with
          else
            win3 = 0
          end
        end
      end
      false
    end

    # Create 4 vectors to check if player is winner
    def create_pivot_vectors(x, y)
      @moves = nil
      @moves = {
        horizontal: { 0 => nil, 1 => nil, 2 => nil, 3 => nil, 4 => nil, 5 => nil, 6 => nil },
        vertical: { 0 => nil, 1 => nil, 2 => nil, 3 => nil, 4 => nil, 5 => nil, 6 => nil },
        diagonal1: { 0 => nil, 1 => nil, 2 => nil, 3 => nil, 4 => nil, 5 => nil, 6 => nil },
        diagonal2: { 0 => nil, 1 => nil, 2 => nil, 3 => nil, 4 => nil, 5 => nil, 6 => nil }
      }

      rang = @win_with - 1
      (rang * -1..rang).each do |i|
        index = i + rang
        # TODO: USE METHOD validateXY(x+i,y+i)
        if x + i >= 0 && x + i <= @size - 1
          @moves[:horizontal][index] = @matrix[y][x + i]
        end

        if y + i >= 0 && y + i <= @size - 1
          @moves[:vertical][index] = @matrix[y + i][x]
        end

        if validate_xy(x + i, y + i)
          @moves[:diagonal1][index] = @matrix[y + i][x + i]
        end

        if validate_xy(x + (i * -1), y + i)
          @moves[:diagonal2][index] = @matrix[y + i][x + (i * -1)]
        end
      end
    end

  end

end
