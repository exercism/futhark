import "transpose"

-- two characters in a row
-- ==
-- input { ["A1"] }
-- output { ["A", "1"] }

-- two characters in a column
-- ==
-- input { ["A", "1"] }
-- output { ["A1"] }

-- simple
-- ==
-- input { ["ABC", "123"] }
-- output { ["A1", "B2", "C3"] }

-- single line
-- ==
-- input { ["Single line."] }
-- output { ["S", "i", "n", "g", "l", "e", " ", "l", "i", "n", "e", "."] }

-- first line longer than second line
-- ==
-- input { ["The fourth line.", "The fifth line. "] }
-- output { ["TT", "hh", "ee", "  ", "ff", "oi", "uf", "rt", "th", "h ", " l", "li", "in", "ne", "e.", ". "] }

-- second line longer than first line
-- ==
-- input { ["The first line. ", "The second line."] }
-- output { ["TT", "hh", "ee", "  ", "fs", "ie", "rc", "so", "tn", " d", "l ", "il", "ni", "en", ".e", " ."] }

-- mixed line length
-- ==
-- input { ["The longest line.", "A long line.     ", "A longer line.   ", "A line.          "] }
-- output { ["TAAA", "h   ", "elll", " ooi", "lnnn", "ogge", "n e.", "glr ", "ei  ", "snl ", "tei ", " .n ", "l e ", "i . ", "n   ", "e   ", ".   "] }

-- square
-- ==
-- input { ["HEART", "EMBER", "ABUSE", "RESIN", "TREND"] }
-- output { ["HEART", "EMBER", "ABUSE", "RESIN", "TREND"] }

-- rectangle
-- ==
-- input { ["FRACTURE", "OUTLINED", "BLOOMING", "SEPTETTE"] }
-- output { ["FOBS", "RULE", "ATOP", "CLOT", "TIME", "UNIT", "RENT", "EDGE"] }

-- triangle
-- ==
-- input { ["T     ", "EE    ", "AAA   ", "SSSS  ", "EEEEE ", "RRRRRR"] }
-- output { ["TEASER", " EASER", "  ASER", "   SER", "    ER", "     R"] }

-- jagged triangle
-- ==
-- input { ["11    ", "2     ", "3333  ", "444   ", "555555", "66666 "] }
-- output { ["123456", "1 3456", "  3456", "  3 56", "    56", "    5 "] }

def main [m] [n] (lines: [m][n]u8): [n][m]u8 =
  transpose lines
