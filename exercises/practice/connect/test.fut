import "connect"

-- an empty board has no winner
-- ==
-- input  { [". . . . .    ", " . . . . .   ", "  . . . . .  ", "   . . . . . ", "    . . . . ."] }
-- output { "." }

-- X can win on a 1x1 board
-- ==
-- input  { ["X"] }
-- output { "X" }

-- O can win on a 1x1 board
-- ==
-- input  { ["O"] }
-- output { "O" }

-- only edges does not make a winner
-- ==
-- input  { ["O O O X   ", " X . . X  ", "  X . . X ", "   X O O O"] }
-- output { "." }

-- illegal diagonal does not make a winner
-- ==
-- input  { ["X O . .    ", " O X X X   ", "  O X O .  ", "   . O X . ", "    X X O O"] }
-- output { "." }

-- nobody wins crossing adjacent angles
-- ==
-- input  { ["X . . .    ", " . X O .   ", "  O . X O  ", "   . O . X ", "    . . O ."] }
-- output { "." }

-- X wins crossing from left to right
-- ==
-- input  { [". O . .    ", " O X X X   ", "  O X O .  ", "   X X O X ", "    . O X ."] }
-- output { "X" }

-- O wins crossing from top to bottom
-- ==
-- input  { [". O . .    ", " O X X X   ", "  O O O .  ", "   X X O X ", "    . O X ."] }
-- output { "O" }

-- X wins using a convoluted path
-- ==
-- input  { [". X X . .    ", " X . X . X   ", "  . X . X .  ", "   . X X . . ", "    O O O O O"] }
-- output { "X" }

-- X wins using a spiral path
-- ==
-- input  { ["O X X X X X X X X        ", " O X O O O O O O O       ", "  O X O X X X X X O      ", "   O X O X O O O X O     ", "    O X O X X X O X O    ", "     O X O O O X O X O   ", "      O X X X X X O X O  ", "       O O O O O O O X O ", "        X X X X X X X X O"] }
-- output { "X" }

let main [m] [n] (board: [m][n]u8): [1]u8 =
  [winner board]
