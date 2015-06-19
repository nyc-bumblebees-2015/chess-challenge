require_relative 'bishop'
require 'pry'
class Bishop

  attr_reader :color
  def initialize(color)
    @color = color
    @marker = "B"
  end

  def move?(origin,destination,board)
    dx = destination[0].to_i
    dy = destination[1].to_i
    ox = origin[0].to_i
    oy = origin[1].to_i

    if board[destination] != nil && board[destination].color == @color
      return false
    end

    horizontal = ox - dx < 0 ? -1 : 1
    vertical = oy - dy <0 ? -1 : 1
    distance = (ox - dx).abs
    until distance == 1 do
      oy += horizontal
      ox += vertical
      if board[ox.to_s + oy.to_s] != nil
        return false
      end
      distance -= 1
    end
      return true  
  end
end
