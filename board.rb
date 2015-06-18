require_relative 'piece'

DIMENSION = 8
class Board
  def initialize
    @board = {}
    @board[11] = Rook.new(:w)
    @board[12] = Knight.new(:w)
    @board[13] = Bishop.new(:w)
    @board[14] = King.new(:w)
    @board[15] = Queen.new(:w)
    @board[16] = Bishop.new(:w)
    @board[17] = Knight.new(:w)
    @board[18] = Rook.new(:w)
    initialize_row_with_same(2, Pawn.new(:w))
    (3..7).each { |row_num| initialize_row_with_same(row_num) }
    initialize_row_with_same(8, Pawn.new(:b))
    @board[81] = Rook.new(:b)
    @board[82] = Knight.new(:b)
    @board[83] = Bishop.new(:b)
    @board[84] = King.new(:b)
    @board[85] = Queen.new(:b)
    @board[86] = Bishop.new(:b)
    @board[87] = Knight.new(:b)
    @board[88] = Rook.new(:b)
  end

  def initialize_row_with_same(row_num, piece = nil)
    (1..DIMENSION).each do |col|
      @board[row_num * 10 + col] = piece
    end
  end

  def to_s
  end

end
