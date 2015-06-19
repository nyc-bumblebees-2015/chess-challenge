require_relative 'model'

describe Rook do
  let (:board) {Board.new}
  let (:rook) {Rook.new(5,3, board)}

  it "should return all the possible moves for rook" do
    expect(rook.moves).to eq ([[0, 3], [1, 3], [2, 3], [3, 3], [4, 3], [5, 3], [6, 3], [7, 3], [5, 0], [5, 1], [5, 2], [5, 3], [5, 4], [5, 5], [5, 6], [5, 7]])
  end
end
