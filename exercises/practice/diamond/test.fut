import "diamond"

-- Degenerate case with a single 'A' row
-- ==
-- input  { "A" }
-- output { ["A"] }

-- Degenerate case with no row containing 3 distinct groups of spaces
-- ==
-- input  { "B" }
-- output { [" A ", "B B", " A "] }

-- Smallest non-degenerate case with odd diamond side length
-- ==
-- input  { "C" }
-- output { ["  A  ", " B B ", "C   C", " B B ", "  A  "] }

-- Smallest non-degenerate case with even diamond side length
-- ==
-- input  { "D" }
-- output { ["   A   ", "  B B  ", " C   C ", "D     D", " C   C ", "  B B  ", "   A   "] }

-- Largest possible diamond
-- ==
-- input  { "Z" }
-- output { ["                         A                         ", "                        B B                        ", "                       C   C                       ", "                      D     D                      ", "                     E       E                     ", "                    F         F                    ", "                   G           G                   ", "                  H             H                  ", "                 I               I                 ", "                J                 J                ", "               K                   K               ", "              L                     L              ", "             M                       M             ", "            N                         N            ", "           O                           O           ", "          P                             P          ", "         Q                               Q         ", "        R                                 R        ", "       S                                   S       ", "      T                                     T      ", "     U                                       U     ", "    V                                         V    ", "   W                                           W   ", "  X                                             X  ", " Y                                               Y ", "Z                                                 Z", " Y                                               Y ", "  X                                             X  ", "   W                                           W   ", "    V                                         V    ", "     U                                       U     ", "      T                                     T      ", "       S                                   S       ", "        R                                 R        ", "         Q                               Q         ", "          P                             P          ", "           O                           O           ", "            N                         N            ", "             M                       M             ", "              L                     L              ", "               K                   K               ", "                J                 J                ", "                 I               I                 ", "                  H             H                  ", "                   G           G                   ", "                    F         F                    ", "                     E       E                     ", "                      D     D                      ", "                       C   C                       ", "                        B B                        ", "                         A                         "] }

let main (letter: [1]u8): [][]u8 =
  rows letter[0]
