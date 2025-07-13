import "flower_field"

-- no rows
-- ==
-- input  { empty([0][0]u8) }
-- output { empty([0][0]u8) }

-- no columns
-- ==
-- input  { [""] }
-- output { [""] }

-- no flowers
-- ==
-- input  { ["   ", "   ", "   "] }
-- output { ["   ", "   ", "   "] }

-- garden full of flowers
-- ==
-- input  { ["***", "***", "***"] }
-- output { ["***", "***", "***"] }

-- flower surrounded by spaces
-- ==
-- input  { ["   ", " * ", "   "] }
-- output { ["111", "1*1", "111"] }

-- space surrounded by flowers
-- ==
-- input  { ["***", "* *", "***"] }
-- output { ["***", "*8*", "***"] }

-- horizontal line
-- ==
-- input  { [" * * "] }
-- output { ["1*2*1"] }

-- horizontal line, flowers at edges
-- ==
-- input  { ["*   *"] }
-- output { ["*1 1*"] }

-- vertical line
-- ==
-- input  { [" ", "*", " ", "*", " "] }
-- output { ["1", "*", "2", "*", "1"] }

-- vertical line, flowers at edges
-- ==
-- input  { ["*", " ", " ", " ", "*"] }
-- output { ["*", "1", " ", "1", "*"] }

-- cross
-- ==
-- input  { ["  *  ", "  *  ", "*****", "  *  ", "  *  "] }
-- output { [" 2*2 ", "25*52", "*****", "25*52", " 2*2 "] }

-- large garden
-- ==
-- input  { [" *  * ", "  *   ", "    * ", "   * *", " *  * ", "      "] }
-- output { ["1*22*1", "12*322", " 123*2", "112*4*", "1*22*2", "111111"] }

let main [m] [n] (garden: [m][n]u8): [m][n]u8 =
  annotate garden
