require 'pry'

class Board
  include Mover
  attr_reader :board, :key_array
  def initialize
    @board = {}
    @key_array = []
    board_hash
  end

  def board_maker
    (0..7).each do |x|
      (0..7).each do |y|
        key_array << [x,y]
      end
    end
  end

  def board_hash
    board_maker
    key_array.each do |num|
      key = num
      val = nil
      board[key] = val
    end
    @board
  end

  def to_s
  #   # binding.pry
    @board.to_s
  end

  def include?(array)
    key_array.include?(array)
  end

  def move(loc1, loc2)
    @board[loc2] = @board[loc1]
    @board[loc1] = nil
  end

end

my_board = Board.new
my_board.board[[3, 1]] = "stuff"
puts my_board
my_board.move([3, 1], [5, 1])
puts my_board
# p board.include?([5, 3])
# my_piece = Rook.new(5, 3, board)
# # p my_piece.moves
# bishop = Bishop.new(5, 3, board)
# p bishop.moves
# # p my_game.king
# # p my_game.knight

