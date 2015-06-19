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
