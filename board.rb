require_relative 'piece'
require_relative 'view'

PIECE_ORDER  = [ Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook]

class Board
  DIMENSION = 8

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
    (3..6).each { |row_num| initialize_row_with_same(row_num) }
    initialize_row_with_same(7, Pawn.new(:b))
    @board[81] = Rook.new(:b)
    @board[82] = Knight.new(:b)
    @board[83] = Bishop.new(:b)
    @board[84] = King.new(:b)
    @board[85] = Queen.new(:b)
    @board[86] = Bishop.new(:b)
    @board[87] = Knight.new(:b)
    @board[88] = Rook.new(:b)
  end

  def initialize_row_with_same(row_num, piece = " ")
    (1..DIMENSION).each { |col| @board[row_num * 10 + col] = piece }
  end

  def move(start_coord, end_coord)
    @board[end_coord] = @board[start_coord]
    @board[start_coord] = " "
  end

  def select_piece(coord, player_color)
    @board[coord] != " " && @board[coord].color == player_color
  end

  def valid_moves(coord)
    possible_moves = @board[coord].moves # a 2D array
    possible_moves.each do |dir|
      dir = filter(dir)
    end
  end

  def filter(possible_moves)

  end

  def game_over?
    false
  end

  def to_s
    @board.values.reverse.each_slice(DIMENSION).to_a.map { |row| row.reverse.join("  ") }.join("\n")
  end

end

# b = Board.new
# puts b
# p b.select_piece(11, :b)
# p b.select_piece(11, :w)
p b.select_piece(33, :w)
# puts b
# puts View.display(b.to_s)

# b.move(11, 44)
# p b
# puts b
