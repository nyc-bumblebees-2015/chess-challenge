require_relative 'board'

class Chess

  def initialize(board)
    @board = board
    run
  end

  def run
    until @board.game_over?

      puts @board

      print "White Player choose piece to move: "
      start_coord = STDIN.gets.chomp
      print "White Player choose place to move to: "
      end_coord = STDIN.gets.chomp
      @board.move(input_convert(start_coord), input_convert(end_coord))

      puts @board

      print "Black Player choose piece to move: "
      start_coord = STDIN.gets.chomp
      print "Black Player choose place to move to: "
      end_coord = STDIN.gets.chomp
      @board.move(input_convert(start_coord), input_convert(end_coord))
    end

  end


  def input_convert(input)
    input.to_i
  end


end


Chess.new(Board.new)
