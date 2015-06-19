module Mover
  def move(pos, vec_array)
    ary = []
    x = pos[0]
    y = pos[1]
    vec_array.each do |vec|
      while @board.include?([x, y])
        x += vec[0]
        y += vec[1]
        if @board.include?([x, y])
          ary << [x,y]
        else
          x = pos[0]
          y = pos[1]
          break
        end
      end
    end
  return ary
  end
end
