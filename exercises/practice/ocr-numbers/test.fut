import "ocr_numbers"

-- Recognizes 0
-- ==
-- input  { [" _ ", "| |", "|_|", "   "] }
-- output { "0" }

-- Recognizes 1
-- ==
-- input  { ["   ", "  |", "  |", "   "] }
-- output { "1" }

-- Unreadable but correctly sized inputs return ?
-- ==
-- input  { ["   ", "  _", "  |", "   "] }
-- output { "?" }

-- Input with a number of lines that is not a multiple of four raises an error
-- ==
-- input  { [" _ ", "| |", "   "] }
-- error: Error*

-- Input with a number of columns that is not a multiple of three raises an error
-- ==
-- input  { ["    ", "   |", "   |", "    "] }
-- error: Error*

-- Recognizes 110101100
-- ==
-- input  { ["       _     _        _  _ ", "  |  || |  || |  |  || || |", "  |  ||_|  ||_|  |  ||_||_|", "                           "] }
-- output { "110101100" }

-- Garbled numbers in a string are replaced with ?
-- ==
-- input  { ["       _     _           _ ", "  |  || |  || |     || || |", "  |  | _|  ||_|  |  ||_||_|", "                           "] }
-- output { "11?10?1?0" }

-- Recognizes 2
-- ==
-- input  { [" _ ", " _|", "|_ ", "   "] }
-- output { "2" }

-- Recognizes 3
-- ==
-- input  { [" _ ", " _|", " _|", "   "] }
-- output { "3" }

-- Recognizes 4
-- ==
-- input  { ["   ", "|_|", "  |", "   "] }
-- output { "4" }

-- Recognizes 5
-- ==
-- input  { [" _ ", "|_ ", " _|", "   "] }
-- output { "5" }

-- Recognizes 6
-- ==
-- input  { [" _ ", "|_ ", "|_|", "   "] }
-- output { "6" }

-- Recognizes 7
-- ==
-- input  { [" _ ", "  |", "  |", "   "] }
-- output { "7" }

-- Recognizes 8
-- ==
-- input  { [" _ ", "|_|", "|_|", "   "] }
-- output { "8" }

-- Recognizes 9
-- ==
-- input  { [" _ ", "|_|", " _|", "   "] }
-- output { "9" }

-- Recognizes string of decimal numbers
-- ==
-- input  { ["    _  _     _  _  _  _  _  _ ", "  | _| _||_||_ |_   ||_||_|| |", "  ||_  _|  | _||_|  ||_| _||_|", "                              "] }
-- output { "1234567890" }

-- Numbers separated by empty lines are recognized. Lines are joined by commas.
-- ==
-- input  { ["    _  _ ", "  | _| _|", "  ||_  _|", "         ", "    _  _ ", "|_||_ |_ ", "  | _||_|", "         ", " _  _  _ ", "  ||_||_|", "  ||_| _|", "         "] }
-- output { "123,456,789" }

def main (rows: [][]u8): []u8 =
  convert rows
