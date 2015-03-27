require_relative 'chess-model'
require_relative 'chess-view'

class Control
  attr_reader :view, :model

  def initialize
    @view = View.new
    @model = Board.new
  end

  def place
    piece = @view.piece.capitalize
    location = @view.location.downcase
    color = @view.color.downcase

    @model.board[location] = Object.const_get(piece).new(color)
  end

  def runner
    @view.prompt_move
    place
    @view.prompt_move
    place
    @view.prompt_move
    place
    # @view.prompt_move
    # place
    # @view.prompt_move
    # place
    # @view.prompt_move
    # place
    # @view.prompt_move
    # place
    @view.to_s(@model.board)
  end

end

control = Control.new
control.runner
# p control.model.board
