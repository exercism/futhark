import "rectangles"

-- no rectangles
-- ==
-- input  { [" "] }
-- output { 0 }

-- one rectangle
-- ==
-- input  { ["+-+", "| |", "+-+"] }
-- output { 1 }

-- two rectangles without shared parts
-- ==
-- input  { ["  +-+", "  | |", "+-+-+", "| |  ", "+-+  "] }
-- output { 2 }

-- five rectangles with shared parts
-- ==
-- input  { ["  +-+", "  | |", "+-+-+", "| | |", "+-+-+"] }
-- output { 5 }

-- rectangle of height 1 is counted
-- ==
-- input  { ["+--+", "+--+"] }
-- output { 1 }

-- rectangle of width 1 is counted
-- ==
-- input  { ["++", "||", "++"] }
-- output { 1 }

-- 1x1 square is counted
-- ==
-- input  { ["++", "++"] }
-- output { 1 }

-- only complete rectangles are counted
-- ==
-- input  { ["  +-+", "    |", "+-+-+", "| | -", "+-+-+"] }
-- output { 1 }

-- rectangles can be of different sizes
-- ==
-- input  { ["+------+----+", "|      |    |", "+---+--+    |", "|   |       |", "+---+-------+"] }
-- output { 3 }

-- corner is required for a rectangle to be complete
-- ==
-- input  { ["+------+----+", "|      |    |", "+------+    |", "|   |       |", "+---+-------+"] }
-- output { 2 }

-- large input with many rectangles
-- ==
-- input  { ["+---+--+----+", "|   +--+----+", "+---+--+    |", "|   +--+----+", "+---+--+--+-+", "+---+--+--+-+", "+------+  | |", "          +-+"] }
-- output { 60 }

-- rectangles must have four sides
-- ==
-- input  { ["+-+ +-+", "| | | |", "+-+-+-+", "  | |  ", "+-+-+-+", "| | | |", "+-+ +-+"] }
-- output { 5 }

let main (strings: [][]u8): i32 =
  rectangles strings
