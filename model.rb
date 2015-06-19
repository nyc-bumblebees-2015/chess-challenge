require 'pry'
module Mover
  def move(pos, vec_array)
    ary = []
    x = pos[0]
    y = pos[1]
    vec_array.each do |vec|
      while @board.include?([x, y])
        x += vec[0]
        y += vec[1]
        if @board.include?([x, y])
          ary << [x,y]
        else
          x = pos[0]
          y = pos[1]
          break
        end
      end
    end
  return ary
  end
end


class Pieces
  include Mover

  attr_accessor :x, :y, :color
  def initialize(x, y, board, color = :white)
    @x = x
    @y = y
    @board = board
    @color = color
  end
end

class Rook < Pieces
  def moves
    directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
    move([x, y], directions)
  end
end

class Bishop < Pieces
  def moves
    vec_array = [[1, 1], [1, -1], [-1, 1], [-1, -1]]
    move([x, y], vec_array)
  end
end

class Queen < Pieces
  def moves
    vec_array = [[1, 1], [1, -1], [-1, 1], [-1, -1], [1, 0], [-1, 0], [0, 1], [0, -1]]
    move([x, y], vec_array)
  end
end

class King < Pieces
  def moves
    return [[x - 1, y], [x + 1, y], [x, y + 1], [x, y - 1], [x + 1, y + 1], [x + 1, y - 1], [x - 1, y - 1], [x - 1, y + 1]]
  end
end

class Knight < Pieces
  def moves
    return [[x + 1, y + 2], [x + 2, y + 1], [x + 2, y - 1], [x + 1, y - 2], [x - 1, y - 2], [x - 2, y - 1], [x - 2, y + 1], [x - 1, y + 2]]
  end
end

class Pawn < Pieces
  def moves
    ary = []
  if color == :white
    ary << [x, y + 1]
    if y == 1
      ary << [x, y + 2]
    end
    if @board[x + 1, y + 1].color == :black
      ary << [x + 1, y + 1]
    end
  elsif @board[x - 1, y + 1].color == :black
    ary << [x - 1, y + 1]
  end
  return ary
    if color == :black
      ary << [x, y - 1]
      if y == 6
        [x, y - 2]
      end
      if @board[x - 1, y - 1].color == :white
        ary << [x - 1, y - 1]
      end
    elsif @board[x + 1, y - 1].color == :white
      ary << [x + 1, y - 1]
    end
    return ary
  end
end

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

