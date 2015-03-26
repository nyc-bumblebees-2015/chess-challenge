MOVES = {
  white_pawn => {
#Second Rank
    "A2" => ["A3", "B3", "A4"],
    "B2" => ["B3", "A3", "C3", "B4"],
    "C2" => ["C3", "B3", "D3", "C4"],
    "D2" => ["D3", "C3", "E3", "D4"],
    "E2" => ["E3", "D3", "F3", "E4"],
    "F2" => ["F3", "E3", "G3", "F4"],
    "G2" => ["G3", "F3", "H3", "G4"],
    "H2" => ["H3", "G3", "H4"],
#Third Rank
    "A3" => ["A4", "B4"],
    "B3" => ["A4", "B4", "C4"],
    "C3" => ["B4", "C4", "D4"],
    "D3" => ["C4", "D4", "E4"],
    "E3" => ["D4", "E4", "F4"],
    "F3" => ["E4", "F4", "G4"],
    "G3" => ["F4", "G4", "H4"],
    "H3" => ["G4", "H4"],
#Fourth Rank
    "A4" => ["A5", "B5"],
    "B4" => ["A5", "B5", "C5"],
    "C4" => ["B5", "C5", "D5"],
    "D4" => ["C5", "D5", "E5"],
    "E4" => ["D5", "E5", "F5"],
    "F4" => ["E5", "F5", "G5"],
    "G4" => ["F5", "G5", "H5"],
    "H4" => ["G5", "H5"],
#Fifth Rank
    "A5" => ["A6", "B6"],
    "B5" => ["A6", "B6", "C6"],
    "C5" => ["B6", "C6", "D6"],
    "D5" => ["C6", "D6", "E6"],
    "E5" => ["D6", "E6", "F6"],
    "F5" => ["E6", "F6", "G6"],
    "G5" => ["F6", "G6", "H6"],
    "H5" => ["G6", "H6"],
#Sixth Rank
    "A6" => ["A7", "B7"],
    "B6" => ["A7", "B7", "C7"],
    "C6" => ["B7", "C7", "D7"],
    "D6" => ["C7", "D7", "E7"],
    "E6" => ["D7", "E7", "F7"],
    "F6" => ["E7", "F7", "G7"],
    "G6" => ["F7", "G7", "H7"],
    "H6" => ["G7", "H7"],
#Seventh Rank
    "A7" => ["A8", "B8"],
    "B7" => ["A8", "B8", "C8"],
    "C7" => ["B8", "C8", "D8"],
    "D7" => ["C8", "D8", "E8"],
    "E7" => ["D8", "E8", "F8"],
    "F7" => ["E8", "F8", "G8"],
    "G7" => ["F8", "G8", "H8"],
    "H7" => ["G8", "H8"]
  }

  black_pawn => {
#Seventh Rank
    "A7" => ["A6", "A5", "B6"],
    "B7" => ["A6", "B6", "B5", "C6"],
    "C7" => ["B6", "C6", "C5", "D6"],
    "D7" => ["C6", "D6", "D5", "E6"],
    "E7" => ["D6", "E6", "E5", "F6"],
    "F7" => ["E6", "F6", "F5", "G6"],
    "G7" => ["F6", "G6", "G5", "H6"],
    "H7" => ["G6", "H6", "H5"],
#Sixth Rank
    "A6" => ["A5", "B5"],
    "B6" => ["A5", "B5", "C5"],
    "C6" => ["B5", "C5", "D5"],
    "D6" => ["C5", "D5", "E5"],
    "E6" => ["D5", "E5", "F5"],
    "F6" => ["E5", "F5", "G5"],
    "G6" => ["F5", "G5", "H5"],
    "H6" => ["G5", "H5"],
#Fifth Rank
    "A5" => ["A4", "B4"],
    "B5" => ["A4", "B4", "C4"],
    "C5" => ["B4", "C4", "D4"],
    "D5" => ["C4", "D4", "E4"],
    "E5" => ["D4", "E4", "F4"],
    "F5" => ["E4", "F4", "G4"],
    "G5" => ["F4", "G4", "H4"],
    "H5" => ["G4", "H4"],
#Fourth Rank
    "A4" => ["A3", "B3"],
    "B4" => ["A3", "B3", "C3"],
    "C4" => ["B3", "C3", "D3"],
    "D4" => ["C3", "D3", "E3"],
    "E4" => ["D3", "E3", "F3"],
    "F4" => ["E3", "F3", "G3"],
    "G4" => ["F3", "G3", "H3"],
    "H4" => ["G3", "H3"],
#Third Rank
    "A3" => ["A2", "B2"],
    "B3" => ["A2", "B2", "C2"],
    "C3" => ["B2", "C2", "D2"],
    "D3" => ["C2", "D2", "E2"],
    "E3" => ["D2", "E2", "F2"],
    "F3" => ["E2", "F2", "G2"],
    "G3" => ["F2", "G2", "H2"],
    "H3" => ["G2", "H2"],
#Second Rank
    "A2" => ["A1", "B1"],
    "B2" => ["A1", "B1", "C1"],
    "C2" => ["B1", "C1", "D1"],
    "D2" => ["C1", "D1", "E1"],
    "E2" => ["D1", "E1", "F1"],
    "F2" => ["E1", "F1", "G1"],
    "G2" => ["F1", "G1", "H1"],
    "H2" => ["G1", "H1"]
  }

  rook => {
#First Rank
    "A1" => ["A2", "A3", "A4", "A5", "A6", "A7", "A8", "B1", "C1", "D1", "E1", "F1", "G1", "H1"],
    "B1" => ["B2", "B3", "B4", "B5", "B6", "B7", "B8", "A1", "C1", "D1", "E1", "F1", "G1", "H1"],
    "C1" => ["C2", "C3", "C4", "C5", "C6", "C7", "C8", "A1", "B1", "D1", "E1", "F1", "G1", "H1"],
    "D1" => ["D2", "D3", "D4", "D5", "D6", "D7", "D8", "A1", "B1", "C1", "E1", "F1", "G1", "H1"],
    "E1" => ["E2", "E3", "E4", "E5", "E6", "E7", "E8", "A1", "B1", "C1", "D1", "F1", "G1", "H1"],
    "F1" => ["F2", "F3", "F4", "F5", "F6", "F7", "F8", "A1", "B1", "C1", "D1", "E1", "G1", "H1"],
    "G1" => ["G2", "G3", "G4", "G5", "G6", "G7", "G8", "A1", "B1", "C1", "D1", "E1", "F1", "H1"],
    "H1" => ["H2", "H3", "H4", "H5", "H6", "H7", "H8", "A1", "B1", "C1", "D1", "E1", "G1"],
#Second Rank
    "A2" => ["A1", "A3", "A4", "A5", "A6", "A7", "A8", "B2", "C2", "D2", "E2", "F2", "G2", "H2"],
    "B2" => ["B1", "B3", "B4", "B5", "B6", "B7", "B8", "A2", "C2", "D2", "E2", "F2", "G2", "H2"],
    "C2" => ["C1", "C3", "C4", "C5", "C6", "C7", "C8", "A2", "B2", "D2", "E2", "F2", "G2", "H2"],
    "D2" => ["D1", "D3", "D4", "D5", "D6", "D7", "D8", "A2", "B2", "C2", "E2", "F2", "G2", "H2"],
    "E2" => ["E1", "E3", "E4", "E5", "E6", "E7", "E8", "A2", "B2", "C2", "D2", "F2", "G2", "H2"],
    "F2" => ["F1", "F3", "F4", "F5", "F6", "F7", "F8", "A2", "B2", "C2", "D2", "E2", "G2", "H2"],
    "G2" => ["G1", "G3", "G4", "G5", "G6", "G7", "G8", "A2", "B2", "C2", "D2", "E2", "F2", "H2"],
    "H2" => ["H1", "H3", "H4", "H5", "H6", "H7", "H8", "A2", "B2", "C2", "D2", "E2", "F2", "G2"],
#Third Rank
    "A3" => ["A1", "A2", "A4", "A5", "A6", "A7", "A8", "B3", "C3", "D3", "E3", "F3", "G3", "H3"],
    "B3" => ["B1", "B2", "B4", "B5", "B6", "B7", "B8", "A3", "C3", "D3", "E3", "F3", "G3", "H3"],
    "C3" => ["C1", "C2", "C4", "C5", "C6", "C7", "C8", "A3", "B3", "D3", "E3", "F3", "G3", "H3"],
    "D3" => ["D1", "D2", "D4", "D5", "D6", "D7", "D8", "A3", "B3", "C3", "E3", "F3", "G3", "H3"],
    "E3" => ["E1", "E2", "E4", "E5", "E6", "E7", "E8", "A3", "B3", "C3", "D3", "F3", "G3", "H3"],
    "F3" => ["F1", "F2", "F4", "F5", "F6", "F7", "F8", "A3", "B3", "C3", "D3", "E3", "G3", "H3"],
    "G3" => ["G1", "G2", "G4", "G5", "G6", "G7", "G8", "A3", "B3", "C3", "D3", "E3", "F3", "H3"],
    "H3" => ["H1", "H2", "H4", "H5", "H6", "H7", "H8", "A3", "B3", "C3", "D3", "E3", "F3", "G3"],
#Fourth Rank
    "A4" => ["A1", "A2", "A3", "A5", "A6", "A7", "A8", "B4", "C4", "D4", "E4", "F4", "G4", "H4"],
    "B4" => ["B1", "B2", "B3", "B5", "B6", "B7", "B8", "A4", "C4", "D4", "E4", "F4", "G4", "H4"],
    "C4" => ["C1", "C2", "C3", "C5", "C6", "C7", "C8", "A4", "B4", "D4", "E4", "F4", "G4", "H4"],
    "D4" => ["D1", "D2", "D3", "D5", "D6", "D7", "D8", "A4", "B4", "C4", "E4", "F4", "G4", "H4"],
    "E4" => ["E1", "E2", "E3", "E5", "E6", "E7", "E8", "A4", "B4", "C4", "D4", "F4", "G4", "H4"],
    "F4" => ["F1", "F2", "F3", "F5", "F6", "F7", "F8", "A4", "B4", "C4", "D4", "E4", "G4", "H4"],
    "G4" => ["G1", "G2", "G3", "G5", "G6", "G7", "G8", "A4", "B4", "C4", "D4", "E4", "F4", "H4"],
    "H4" => ["H1", "H2", "H3", "H5", "H6", "H7", "H8", "A4", "B4", "C4", "D4", "E4", "F4", "G4"],
#Fifth Rank
    "A5" => ["A1", "A2", "A3", "A4", "A6", "A7", "A8", "B5", "C5", "D5", "E5", "F5", "G5", "H5"],
    "B5" => ["B1", "B2", "B3", "B4", "B6", "B7", "B8", "A5", "C5", "D5", "E5", "F5", "G5", "H5"],
    "C5" => ["C1", "C2", "C3", "C4", "C6", "C7", "C8", "A5", "B5", "D5", "E5", "F5", "G5", "H5"],
    "D5" => ["D1", "D2", "D3", "D4", "D6", "D7", "D8", "A5", "B5", "C5", "E5", "F5", "G5", "H5"],
    "E5" => ["E1", "E2", "E3", "E4", "E6", "E7", "E8", "A5", "B5", "C5", "D5", "F5", "G5", "H5"],
    "F5" => ["F1", "F2", "F3", "F4", "F6", "F7", "F8", "A5", "B5", "C5", "D5", "E5", "G5", "H5"],
    "G5" => ["G1", "G2", "G3", "G4", "G6", "G7", "G8", "A5", "B5", "C5", "D5", "E5", "F5", "H5"],
    "H5" => ["H1", "H2", "H3", "H4", "H6", "H7", "H8", "A5", "B5", "C5", "D5", "E5", "F5", "G5"],
#Sixth Rank
    "A6" => ["A1", "A2", "A3", "A4", "A5", "A7", "A8", "B6", "C6", "D6", "E6", "F6", "G6", "H6"],
    "B6" => ["B1", "B2", "B3", "B4", "B5", "B7", "B8", "A6", "C6", "D6", "E6", "F6", "G6", "H6"],
    "C6" => ["C1", "C2", "C3", "C4", "C5", "C7", "C8", "A6", "B6", "D6", "E6", "F6", "G6", "H6"],
    "D6" => ["D1", "D2", "D3", "D4", "D5", "D7", "D8", "A6", "B6", "C6", "E6", "F6", "G6", "H6"],
    "E6" => ["E1", "E2", "E3", "E4", "E5", "E7", "E8", "A6", "B6", "C6", "D6", "F6", "G6", "H6"],
    "F6" => ["F1", "F2", "F3", "F4", "F5", "F7", "F8", "A6", "B6", "C6", "D6", "E6", "G6", "H6"],
    "G6" => ["G1", "G2", "G3", "G4", "G5", "G7", "G8", "A6", "B6", "C6", "D6", "E6", "F6", "H6"],
    "H6" => ["H1", "H2", "H3", "H4", "H5", "H7", "H8", "A6", "B6", "C6", "D6", "E6", "F6", "G6"],
#Seventh Rank
    "A7" => ["A1", "A2", "A3", "A4", "A5", "A6", "A8", "B7", "C7", "D7", "E7", "F7", "G7", "H7"],
    "B7" => ["B1", "B2", "B3", "B4", "B5", "B6", "B8", "A7", "C7", "D7", "E7", "F7", "G7", "H7"],
    "C7" => ["C1", "C2", "C3", "C4", "C5", "C6", "C8", "A7", "B7", "D7", "E7", "F7", "G7", "H7"],
    "D7" => ["D1", "D2", "D3", "D4", "D5", "D6", "D8", "A7", "B7", "C7", "E7", "F7", "G7", "H7"],
    "E7" => ["E1", "E2", "E3", "E4", "E5", "E6", "E8", "A7", "B7", "C7", "D7", "F7", "G7", "H7"],
    "F7" => ["F1", "F2", "F3", "F4", "F5", "F6", "F8", "A7", "B7", "C7", "D7", "E7", "G7", "H7"],
    "G7" => ["G1", "G2", "G3", "G4", "G5", "G6", "G8", "A7", "B7", "C7", "D7", "E7", "F7", "H7"],
    "H7" => ["H1", "H2", "H3", "H4", "H5", "H6", "H8", "A7", "B7", "C7", "D7", "E7", "F7", "G7"],
#Eigth Rank
    "A8" => ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "B8", "C8", "D8", "E8", "F8", "G8", "H8"],
    "B8" => ["B1", "B2", "B3", "B4", "B5", "B6", "B7", "A8", "C8", "D8", "E8", "F8", "G8", "H8"],
    "C8" => ["C1", "C2", "C3", "C4", "C5", "C6", "C7", "A8", "B8", "D8", "E8", "F8", "G8", "H8"],
    "D8" => ["D1", "D2", "D3", "D4", "D5", "D6", "D7", "A8", "B8", "C8", "E8", "F8", "G8", "H8"],
    "E8" => ["E1", "E2", "E3", "E4", "E5", "E6", "E7", "A8", "B8", "C8", "D8", "F8", "G8", "H8"],
    "F8" => ["F1", "F2", "F3", "F4", "F5", "F6", "F7", "A8", "B8", "C8", "D8", "E8", "G8", "H8"],
    "G8" => ["G1", "G2", "G3", "G4", "G5", "G6", "G7", "A8", "B8", "C8", "D8", "E8", "F8", "H8"],
    "H8" => ["H1", "H2", "H3", "H4", "H5", "H6", "H7", "A8", "B8", "C8", "D8", "E8", "F8", "G8"],
  }

}