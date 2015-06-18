class Bishop
  def initialize(color)
    @color = color
    @marker = "B"
  end

  def move?(origin, destination)
    if @board[MAP_HASH.key(destination)] != nil && @board[MAP_HASH.key([x,y])].color == @color
      return false
    end
    horizontal = (origin[0] - destination[0]  < 0 ? -1 : 1)
    vertical = (origin[1] - destination[1] < 0 ? -1 : 1)
    distance = (origin[0] - destination[0]).abs
    x = origin[0]
    y = origin[1]
    distance-1.times do |x, y|
      x+= horizontal
      y+= vertical
      if @board[MAP_HASH.key([x,y])] != nil
        return false
      end
      return true
    end
  end
end
