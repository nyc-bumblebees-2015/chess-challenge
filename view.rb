module View
  def self.display(board_string)
    row_nums = ("A".."H").to_a.reverse
    s = board_string.split("\n").map.with_index do |line, i|
       "#{row_nums[i]}  #{line}"
    end.concat(["   #{(1..8).to_a.join('  ')}"]).join("\n")
    puts s
  end

  def self.valid_coord
    puts "Please enter a valid coordinate!"
  end

  def self.possible_moves(moves_array)
    puts moves_array.join(' ')
  end

  def self.select_own_pieces(player)
    puts "Please select a coordinate with a #{player == :w ? "White" : "Black"} piece on it!"
  end

  def self.player_choose_piece(player)
    print "#{player == :w ? "White" : "Black"} Player choose piece to move: "
  end

  def self.player_choose_move(player)
    print "#{player == :w ? "White" : "Black"} Player place to move to: "
  end

end
