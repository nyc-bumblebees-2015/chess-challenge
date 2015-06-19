require 'pry'
module DiagonalMover
  def diagonal(x, y)
    ary = []
    while Board.include?(x, y)
      ary << [x + 1, y + 1]
      ary << [x + 1, y - 1]
      ary << [x - 1, y + 1]
      ary << [x - 1, y - 1]
    end
  end
end

module AxisMover
    def axis(x, y)
    ary = []
    (0..7).each {|x_cord| ary << [x_cord, y]}
    (0..7).each {|y_cord| ary << [x, y_cord]}
    return ary
  end
end


class Pieces
  include AxisMover
  include DiagonalMover

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
    axis(x, y)
  end
end

class Bishop < Pieces
  def moves
    diagonal(x, y)
  end
end

class Queen < Pieces
  def moves
    ary = []
  ary << axis(x, y)
  ary << diagonal(x, y)
  ary.flatten
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
  if color == white
    ary << [x, y + 1]
    if y == 1
      [x, y + 2]
    end
    if @board[x + 1, y + 1].color == black
      ary << [x + 1, y + 1]
    end
  elsif @board[x - 1, y + 1].color == black
    ary << [x - 1, y + 1]
  end
    if color == black
      ary << [x, y - 1]
      if y == 6
        [x, y - 2]
      end
      if @board[x - 1, y - 1].color == white
        ary << [x - 1, y - 1]
      end
    elsif @board[x + 1, y - 1].color == white
      ary << [x + 1, y - 1]
    end
  end
end

class Board

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

end

board = Board.new
# puts board
my_piece = Rook.new(5, 3, board)
p my_piece.moves
# # p my_game.king
# # p my_game.knight

