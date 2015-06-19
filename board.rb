require_relative 'bishop'
require 'pry'

class Board

  attr_reader :board
  def initialize
<<<<<<< HEAD
    @board = {[0,0] => nil, [0,1] => nil, [0,2] => nil, [0,3] => nil, [0,4] => nil, [0,5] => nil, [0,6] => nil, [0,7] => nil,
      [1,0] => nil, [1,1] => nil, [1,2] => nil, [1,3] => nil, [1,4] => nil, [1,5] => nil, [1,6] => nil, [1,7] => nil,
      [2,0] => nil, [2,1] => nil, [2,2] => nil, [2,3] => nil, [2,4] => nil, [2,5] => nil, [2,6] => nil, [2,7] => nil,
      [3,0] => nil, [3,1] => nil, [3,2] => nil, [3,3] => nil, [3,4] => nil, [3,5] => nil, [3,6] => nil, [3,7] => nil,
      [4,0] => nil, [4,1] => nil, [4,2] => nil, [4,3] => nil, [4,4] => nil, [4,5] => nil, [4,6] => nil, [4,7] => nil,
      [5,0] => nil, [5,1] => nil, [5,2] => nil, [5,3] => nil, [5,4] => nil, [5,5] => nil, [5,6] => nil, [5,7] => nil,
      [6,0] => nil, [6,1] => nil, [6,2] => nil, [6,3] => nil, [6,4] => nil, [6,5] => nil, [6,6] => nil, [6,7] => nil,
      [7,0] => nil, [7,1] => nil, [7,2] => nil, [7,3] => nil, [7,4] => nil, [7,5] => nil, [7,6] => nil, [7,7] => nil}
  end
=======
@board = {[0,0] => nil, [0,1] => nil, [0,2] => nil, [0,3] => nil, [0,4] => nil, [0,5] => nil, [0,6] => nil, [0,7] => nil,
          [1,0] => nil, [1,1] => nil, [1,2] => nil, [1,3] => nil, [1,4] => nil, [1,5] => nil, [1,6] => nil, [1,7] => nil,
          [2,0] => nil, [2,1] => nil, [2,2] => nil, [2,3] => nil, [2,4] => nil, [2,5] => nil, [2,6] => nil, [2,7] => nil,
          [3,0] => nil, [3,1] => nil, [3,2] => nil, [3,3] => nil, [3,4] => nil, [3,5] => nil, [3,6] => nil, [3,7] => nil,
          [4,0] => nil, [4,1] => nil, [4,2] => nil, [4,3] => nil, [4,4] => nil, [4,5] => nil, [4,6] => nil, [4,7] => nil,
          [5,0] => nil, [5,1] => nil, [5,2] => nil, [5,3] => nil, [5,4] => nil, [5,5] => nil, [5,6] => nil, [5,7] => nil,
          [6,0] => nil, [6,1] => nil, [6,2] => nil, [6,3] => nil, [6,4] => nil, [6,5] => nil, [6,6] => nil, [6,7] => nil,
          [7,0] => nil, [7,1] => nil, [7,2] => nil, [7,3] => nil, [7,4] => nil, [7,5] => nil, [7,6] => nil, [7,7] => nil}
>>>>>>> a73ccafbe9c5100a124f0d85ae0447784bc7f68e

  def [](space)
    return board[space] if board.key?(space)
    raise KeyError, "Invalid board space"
  end

  def []=(space,piece)
    return board[space] = piece if board.key?(space)
    raise KeyError, "Invalid board space"
  end

  def move_piece(origin,destination)
      if board[origin].move?(origin,destination,board)
      board[destination] = board[origin]
      board[origin] = nil
    else
      puts "not a valid move"
    end
  end

  def to_s
    @board
  end
end
