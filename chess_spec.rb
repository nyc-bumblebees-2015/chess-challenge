require_relative 'chess_controller'
require_relative 'board'
require_relative 'bishop'

RSpec.describe 'Controller' do
  it 'can convert user passed coordinate string to internal coordinates (regardless of case)' do
    expect(convert_user_to_board "a8").to eq :"00"
    expect(convert_user_to_board "a1").to eq :"70"
    expect(convert_user_to_board "H8").to eq :"07"
    expect(convert_user_to_board "H1").to eq :"77"
  end

  it 'can convert internal coordinates to user string representation' do
    expect(convert_board_to_user :"00").to eq "A8"
    expect(convert_board_to_user :"70").to eq "A1"
    expect(convert_board_to_user :"07").to eq "H8"
    expect(convert_board_to_user :"77").to eq "H1"
  end

end

describe 'Board' do
  let(:board) {Board.new}
   #it "initializes with a board hash representing the 64 spaces on the board" do
   #   expect(board.board.size).to eq 64
    #end

  context "moves pieces on the board" do
    let(:bishop) {Bishop.new("white")}
   
    pending it 'raises an error if user attempts to access a nonexistent space' do
      expect(board[:'81']).to raise_error KeyError
    end

    it "makes legal moves" do
      board[:"43"] = bishop
      board.move_piece(:"43",:"16")

      expect(board[:"43"]).to be nil
      expect(board[:"16"]).to be bishop
    end

    it "does not make illegal moves" do
      board[:"43"] = bishop
      board[:"16"] = Bishop.new("white")

      board.move_piece(:"43",:"16")

      expect(board[:"43"]).to be bishop
      expect(board[:"16"]).to_not be nil
    end
  end
end

describe 'Bishop' do
  let(:bishop) {Bishop.new("white")}

  it "initializes with a color passed in and a predefined marker" do
    expect(bishop.color).to eq "white"
  end

  context "moves around the board" do
    let(:board){Board.new}

    it "can make a diagonal move on the board into an empty space" do
      board[:"43"] = bishop

      expect(bishop.move?(:"43",:"16",board)).to eq true
    end

    it "can make a diagonal move on the board to capture an opponent piece" do
      board[:"43"] = bishop
      board[:"16"] = Bishop.new("black")

      expect(bishop.move?(:"43",:"16",board)).to eq true
    end

    it "cannot make a diagonal move on the board if there is a piece along the path to it's target space" do
      board[:"43"] = bishop
      board[:"25"] = Bishop.new("black")

      expect(bishop.move?(:"43",:"16",board)).to eq false
    end

    it "cannot make a diagonal move on the board if there is a piece with it's same color in the target space" do
      board[:"43"] = bishop
      board[:"16"] = Bishop.new("white")

      expect(bishop.move?(:"43",:"16",board)).to eq false
    end

    it "cannot make a horizontal move on the board" do
      board[:"43"] = bishop

      expect(bishop.move?(:"43",:"45",board)).to eq false
    end

    it "cannot make a vertical move on the board" do
      board[:"43"] = bishop

      expect(bishop.move?(:"43",:"33",board)).to eq false
    end
  end
end
