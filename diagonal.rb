module Diagonal
  
  def diagonal?(ox, oy, dx, dy)
    if (ox - dx).abs == (oy - dy).abs 
      return true
    end
  end

end