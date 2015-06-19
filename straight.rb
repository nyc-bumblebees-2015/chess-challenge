module Straight

  def straight?(ox, oy, dx, dy)
    if (ox - dx) == 0 || (oy - dy) == 0
      return true
    end
  end

end
