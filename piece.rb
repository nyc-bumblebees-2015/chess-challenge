class Piece
  attr_reader :color

  def initialize(color)
    @color = color
  end

end


class King < Piece

  def to_s
    @color == :w ? '♔' : '♚'
  end

end


class Queen < Piece

  def to_s
    @color == :w ? '♕' : '♛'
  end

end


class Bishop < Piece

  def to_s
    @color == :w ? '♗' : '♝'
  end

end

class Rook < Piece

  def to_s
    @color == :w ? '♖' : '♜'
  end

end

class Knight < Piece

  def to_s
    @color == :w ? '♘' : '♞'
  end

end

class Pawn < Piece

  def to_s
    @color == :w ? '♙' : '♟'
  end

end