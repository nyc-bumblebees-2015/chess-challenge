require_relative 'board'
require_relative 'view'
require 'pry'

class Chess
  DIMENSION = 8
  def initialize(board)
    @board = board
    binding.pry
    run
  end

  def run
    until @board.game_over?

      View.display(@board.to_s)

      print "White Player choose piece to move: "
      start_coord = STDIN.gets.chomp
      print "White Player choose place to move to: "
      end_coord = STDIN.gets.chomp
      @board.move(input_convert(start_coord), input_convert(end_coord))

      View.display(@board.to_s)

      print "Black Player choose piece to move: "
      start_coord = STDIN.gets.chomp
      print "Black Player choose place to move to: "
      end_coord = STDIN.gets.chomp
      @board.move(input_convert(start_coord), input_convert(end_coord))
    end

  end

  #private
  def valid_coords
    rows = ('a'..'z').to_a[0...DIMENSION] * DIMENSION
    cols = ('1'..'26').to_a[0...DIMENSION].map { |col_num| col_num * DIMENSION }.map(&:chars).flatten
    rows.zip(cols).map(&:join)
  end

  def valid_coord?(coord)
    valid_coords.include?(coord)
  end

  def coord_key_convert(coord)
    row_keys = ('a'..'z').to_a[0...DIMENSION]
    row_values = (1..DIMENSION).to_a

    row_key_value_pairs = row_keys.zip(row_values)
    row_hash = row_key_value_pairs.each_with_object({}) { |pairs, hash| hash[pairs[0]] = pairs[-1] }
    binding.pry
    row, col = coord.downcase.chars
    "#{row_hash[row]}#{col}".to_i
  end

end


Chess.new(Board.new)
