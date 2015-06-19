require 'pry'
module Direction

  def self.vertical(num)
    right = []
    left = []
    7.times do |i|
      r = (num + 10 * (i + 1))
      l = (num - 10 * (i + 1))
      if r <= 88
        right << r
      end
      if l >= 11
        left << l
      end
    end
    [right,left]
  end

  def self.horizontal(num)
    up = []
    down = []
    7.times do |i|
      u = (num + 1 * (i + 1))
      d = (num - 1 * (i + 1))
      if (u % 10) <= 8 && u.to_s.split('')[0] == num.to_s.split('')[0]
        up << u
      end
      if (d % 10) >= 1 && d.to_s.split('')[0] == num.to_s.split('')[0]
        down << d
      end
    end
    [up,down]
  end

  def self.diagonal(num)
    top_right = []
    top_left = []
    bottom_right = []
    bottom_left = []
    7.times do |i|
      tr = (num + 11 * (i + 1))
      if tr <= 88
        break if tr % 10 > 8
        top_right << tr
      end
    end
    7.times do |i|
      tl = (num + 9 * (i + 1))
      if tl <= 88
        break if tl % 10 < 1
        top_left << tl
      end
    end
    7.times do |i|
      br = (num - 9 * (i + 1))
      if br >= 11
        break if br % 10 > 8
        bottom_right << br
      end
    end
    7.times do |i|
      bl = (num - 11 * (i + 1))
      if bl >= 11
        break if bl % 10 < 1
        bottom_left << bl
      end
    end
    [top_right,top_left,bottom_right,bottom_left]
  end
end
