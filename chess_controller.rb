def convert_user_to_board(string_coords)
  x = string_coords[0].upcase.ord - "A".ord
  y = 8 - string_coords[1].to_i
  [y,x]
end

def convert_board_to_user(board_coord)
  x = 8 - board_coord[0].to_i
  y = (board_coord[1].to_i + "A".ord).chr 
  "#{y}#{x}"
end
