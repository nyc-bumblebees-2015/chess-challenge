module Diagonal
  
  def diagonal?
    if (ox - dx).abs == (oy - dy).abs 
      return true
    end
  end

end