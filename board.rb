require_relative 'piece'
require_relative 'view'

class Board
  DIMENSION = 8
  START_FORMATION = [Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook]

  def initialize
    @board = {}
    initialize_row_with_formation(1, :w)
    initialize_row_with_same(2, Pawn.new(:w))
    (3..6).each { |row_num| initialize_row_with_same(row_num) }
    initialize_row_with_same(7, Pawn.new(:b))
    initialize_row_with_formation(8, :b)
  end

  def initialize_row_with_same(row_num, piece = nil)
    (1..DIMENSION).each { |col| @board[row_num * 10 + col] = piece }
  end

  def initialize_row_with_formation(row_num, color)
    START_FORMATION.each_with_index do |piece, col|
      @board[row_num * 10 + col] = piece.new(color)
    end
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
    check_path_endpoint(removed_blocked_moves(possible_moves), color)
  end

  def remove_blocked_moves(possible_moves)
    endpoint = possible_moves.index { |coord| @board[coord] }
    endpoint ? possible_moves[0..endpoint] : possible_moves
  end

  def check_path_endpoint(possible_moves, color)
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
