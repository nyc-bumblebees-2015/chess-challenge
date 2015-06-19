require_relative 'bishop'
require 'pry'

class Board

  attr_reader :board
  def initialize
    @board = {:"00" => nil, :"01" => nil, :"02" => nil, :"03" => nil, :"04" => nil, :"05" => nil, :"06" => nil, :"07" => nil,
      :"10" => nil, :"11" => nil, :"12" => nil, :"13" => nil, :"14" => nil, :"15" => nil, :"16" => nil, :"17" => nil,
      :"20" => nil, :"21" => nil, :"22" => nil, :"23" => nil, :"24" => nil, :"25" => nil, :"26" => nil, :"27" => nil,
      :"30" => nil, :"31" => nil, :"32" => nil, :"33" => nil, :"34" => nil, :"35" => nil, :"36" => nil, :"37" => nil,
      :"40" => nil, :"41" => nil, :"42" => nil, :"43" => nil, :"44" => nil, :"45" => nil, :"46" => nil, :"47" => nil,
      :"50" => nil, :"51" => nil, :"52" => nil, :"53" => nil, :"54" => nil, :"55" => nil, :"56" => nil, :"57" => nil,
      :"60" => nil, :"61" => nil, :"62" => nil, :"63" => nil, :"64" => nil, :"65" => nil, :"66" => nil, :"67" => nil,
      :"70" => nil, :"71" => nil, :"72" => nil, :"73" => nil, :"74" => nil, :"75" => nil, :"76" => nil, :"77" => nil}
  end

  def [](space)
    return board[space] if board.key?(space)
    raise KeyError, "Invalid board space"
  end

  def []=(space,piece)
    return board[space] = piece if board.key?(space)
    raise KeyError, "Invalid board space"
  end

  def move_piece(origin,destination)
      if board[origin].move?(origin,destination,board)
      board[destination] = board[origin]
      board[origin] = nil
    else
      puts "not a valid move"
    end
  end

  def to_s
    @board
  end
end
