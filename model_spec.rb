require_relative 'model'


describe Pieces do
  let (:board) {Board.new}

  let (:rook) {Rook.new(5,3, board)}

  it "should return all the possible moves for rook" do
    expect(rook.moves).to eq ([[0, 3], [1, 3], [2, 3], [3, 3], [4, 3], [5, 3], [6, 3], [7, 3], [5, 0], [5, 1], [5, 2], [5, 3], [5, 4], [5, 5], [5, 6], [5, 7]])
  end

  let (:knight) {Knight.new(5,3, board)}
    it "should return all possible moves for knight" do
      expect(knight.moves).to eq([[6, 5], [7, 4], [7, 2], [6, 1], [4, 1], [3, 2], [3, 4], [4, 5]])
  end

  let (:king) {King.new(5, 3, board)}
    it "should return all possible moves for king" do
      expect(king.moves).to eq([[4, 3], [6, 3], [5, 4], [5, 2], [6, 4], [6, 2], [4, 2], [4, 4]])
  end

  let (:bishop) {Bishop.new(5, 3, board)}
    it "should return all possible moves for bishop" do
      expect(bishop.moves).to eq([[6, 4], [7, 5], [6, 2], [7, 1], [4, 4], [3, 5], [2, 6], [1, 7], [4, 2], [3, 1], [2, 0]])
    end

  # let (:queen) {Queen.new(5,3,board)}
  #   it "should return all possible moves for queen (rook then bishop)" do
  #     expect(queen.moves).to eq([[0, 3], [1, 3], [2, 3], [3, 3], [4, 3], [5, 3], [6, 3], [7, 3], [5, 0], [5, 1], [5, 2], [5, 3], [5, 4], [5, 5], [5, 6], [5, 7],[6, 4], [6, 2], [4, 4], [4, 2], [7, 5], [7, 1], [3, 5], [3, 1], [2, 6], [2, 0], [1, 7]])
  #   end

  # let (:pawn) {Pawn.new(6, 1, board)}
  #   it "should return all possible moves for white pawn" do
  #     expect(pawn.moves).to eq([[6, 2], [6, 3]])
  #   end
end

describe Board do
  let (:board) {Board.new}
    it "should return true for 5, 3" do
      expect(board.include?([5, 3])).to eq(true)
    end

end

