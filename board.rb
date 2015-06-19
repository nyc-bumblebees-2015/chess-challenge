require_relative 'piece'
require_relative 'view'

PIECE_ORDER  = [ Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook]

class Board
  attr_reader :board
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

  def initialize_row_with_same(row_num, piece = nil)
    (1..DIMENSION).each { |col| @board[row_num * 10 + col] = piece }
  end

  def move(start_coord, end_coord)
    @board[end_coord] = @board[start_coord]
    @board[start_coord] = nil
  end

  def select_piece(coord, player_color)
    @board[coord] && @board[coord].color == player_color
  end

  def valid_moves(coord)
    color = @board[coord].color
    @board[coord].moves.map  { |dir| dir = filter_invalid_moves(dir, color) }
  end

  def filter_invalid_moves(possible_moves, color)
    check_path_endpoint(trim_possible_moves(possible_moves), color)
  end

  def trim_possible_moves (possible_moves)
    endpoint = possible_moves.index { |coord| @board[coord] }
    endpoint ? possible_moves[0..endpoint] : possible_moves
  end

  def check_path_endpoint (possible_moves, color)
    piece = @board[possible_moves[-1]]
    possible_moves.delete_at(-1) if piece && piece.color == color
    possible_moves
  end

  def game_over?
    false
  end

  def to_s
    @board.values.reverse.each_slice(8).to_a.map { |row| row.join( "  ") }.join("\n")
  end

end

b = Board.new
View.display(b.to_s)

moves_25 = [[[36, 47, 58], [34, 43, 52, 61], [16], [14]], [[26, 27, 28], [24, 23, 22, 21]], [[35, 45, 55, 65, 75, 85], [15]]]
left = [24, 23, 22, 21]
up = [35, 45, 55, 65, 75, 85]
tl = [36, 47, 58]
tr = [34, 43, 52, 61]
# one_dir = [36, 47, 58]

# p moves_25
p tr
p b.trim_possible_moves(tr)
p b.check_path_endpoint(b.trim_possible_moves(tr), :w)
p b.filter_invalid_moves(tr, :w)
# p b.board.values.reverse.each_slice(8).to_a.map { |row| row.join( "  ") }.join("\n")
