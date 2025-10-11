import "state_of_tic_tac_toe"

-- Finished game where X won via left column victory
-- ==
-- input { ["XOO", "X  ", "X  "] }
-- output { "win" }

-- Finished game where X won via middle column victory
-- ==
-- input { ["OXO", " X ", " X "] }
-- output { "win" }

-- Finished game where X won via right column victory
-- ==
-- input { ["OOX", "  X", "  X"] }
-- output { "win" }

-- Finished game where O won via left column victory
-- ==
-- input { ["OXX", "OX ", "O  "] }
-- output { "win" }

-- Finished game where O won via middle column victory
-- ==
-- input { ["XOX", " OX", " O "] }
-- output { "win" }

-- Finished game where O won via right column victory
-- ==
-- input { ["XXO", " XO", "  O"] }
-- output { "win" }

-- Finished game where X won via top row victory
-- ==
-- input { ["XXX", "XOO", "O  "] }
-- output { "win" }

-- Finished game where X won via middle row victory
-- ==
-- input { ["O  ", "XXX", " O "] }
-- output { "win" }

-- Finished game where X won via bottom row victory
-- ==
-- input { [" OO", "O X", "XXX"] }
-- output { "win" }

-- Finished game where O won via top row victory
-- ==
-- input { ["OOO", "XXO", "XX "] }
-- output { "win" }

-- Finished game where O won via middle row victory
-- ==
-- input { ["XX ", "OOO", "X  "] }
-- output { "win" }

-- Finished game where O won via bottom row victory
-- ==
-- input { ["XOX", " XX", "OOO"] }
-- output { "win" }

-- Finished game where X won via falling diagonal victory
-- ==
-- input { ["XOO", " X ", "  X"] }
-- output { "win" }

-- Finished game where X won via rising diagonal victory
-- ==
-- input { ["O X", "OX ", "X  "] }
-- output { "win" }

-- Finished game where O won via falling diagonal victory
-- ==
-- input { ["OXX", "OOX", "X O"] }
-- output { "win" }

-- Finished game where O won via rising diagonal victory
-- ==
-- input { ["  O", " OX", "OXX"] }
-- output { "win" }

-- Finished game where X won via a row and a column victory
-- ==
-- input { ["XXX", "XOO", "XOO"] }
-- output { "win" }

-- Finished game where X won via two diagonal victories
-- ==
-- input { ["XOX", "OXO", "XOX"] }
-- output { "win" }

-- Draw
-- ==
-- input { ["XOX", "XXO", "OXO"] }
-- output { "draw" }

-- Another draw
-- ==
-- input { ["XXO", "OXX", "XOO"] }
-- output { "draw" }

-- Ongoing game: one move in
-- ==
-- input { ["   ", "X  ", "   "] }
-- output { "ongoing" }

-- Ongoing game: two moves in
-- ==
-- input { ["O  ", " X ", "   "] }
-- output { "ongoing" }

-- Ongoing game: five moves in
-- ==
-- input { ["X  ", " XO", "OX "] }
-- output { "ongoing" }

-- Invalid board: X went twice
-- ==
-- input { ["XX ", "   ", "   "] }
-- output { "invalid" }

-- Invalid board: O started
-- ==
-- input { ["OOX", "   ", "   "] }
-- output { "invalid" }

-- Invalid board: X won and O kept playing
-- ==
-- input { ["XXX", "OOO", "   "] }
-- output { "invalid" }

-- Invalid board: players kept playing after a win
-- ==
-- input { ["XXX", "OOO", "XOX"] }
-- output { "invalid" }

local def name(s: state): []u8 =
  match s
    case #win     -> "win"
    case #draw    -> "draw"
    case #ongoing -> "ongoing"
    case #invalid -> "invalid"

let main (board: [3][3]u8): []u8 =
  name (game_state board)
