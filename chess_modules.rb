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
    [left,right]
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
end


class Test
  def initialize(num)
    @num = num
  end

  def run
    Direction.horizontal(@num)
    #Direction.vertical(@num)
  end
end
testing = Test.new(44)
p testing.run
