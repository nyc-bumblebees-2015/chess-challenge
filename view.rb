module View
  def self.display(board_string)
    row_nums = ("A".."H").to_a.reverse
    s = board_string.split("\n").map.with_index do |line, i|
       "#{row_nums[i]}  #{line}"
    end.concat(["   #{(1..8).to_a.join('  ')}"]).join("\n")
    puts s
  end

end
