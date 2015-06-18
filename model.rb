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
    0..7.each {|x_cord| ary << [x_cord, y]}
    0..7.each {|y_cord| ary << [x, y_cord]}
  end
end


class Pieces

  attr_reader :x, :y, :color
  def initialize(x, y, color = :white)
    @x = x
    @y = y
    @color = color
  end

  def rook(x, y)
    include AxisMover
    AxisMover.axis(x, y)
  end

  def bishop(x, y)
    include DiagonalMover
    DiagonalMover.diagonal(x, y)
  end

  def queen(x, y)
    include DiagonalMover
    include AxisMover
    ary = []
    ary << AxisMover.axis(x, y)
    ary << DiagonalMover.diagonal(x, y)
    ary.flatten
  end

  def king(x, y)
    return [[x - 1, y], [x + 1, y], [x, y + 1], [x, y - 1], [x + 1, y + 1], [x + 1, y - 1], [x - 1, y - 1], [x - 1, y + 1]]
  end

  def knight(x, y)
    return [[x + 1, y + 2], [x + 2, y + 1], [x + 2, y - 1], [x + 1, y - 2], [x -1, y - 2], [x - 2, y - 1], [x - 2, y + 1], [x - 1, y + 2]]
  end

  def pawn(x, y, color)
    ary = []
    if color == white
      ary << [x, y + 1]
      if y == 1
        [x, y + 2]
      end
      if Board[x + 1, y + 1].color == black
        ary << [x + 1, y + 1]
      end
    elsif Board[x - 1, y + 1].color == black
      ary << [x - 1, y + 1]
    end
    if color == black
      ary << [x, y - 1]
      if y == 6
        [x, y - 2]
      end
      if Board[x - 1, y - 1].color == white
        ary << [x - 1, y - 1]
      end
    elsif Board[x + 1, y - 1].color == white
      ary << [x + 1, y - 1]
    end
  end


end

