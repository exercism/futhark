import "resistor_color_trio"

-- Orange and orange and black
-- ==
-- input { "orange" "orange" "black" }
-- output { " 33 ohms    " }

-- Blue and grey and brown
-- ==
-- input { "blue" "grey" "brown" }
-- output { "680 ohms    " }

-- Red and black and red
-- ==
-- input { "red" "black" "red" }
-- output { "  2 kiloohms" }

-- Green and brown and orange
-- ==
-- input { "green" "brown" "orange" }
-- output { " 51 kiloohms" }

-- Yellow and violet and yellow
-- ==
-- input { "yellow" "violet" "yellow" }
-- output { "470 kiloohms" }

-- Blue and violet and blue
-- ==
-- input { "blue" "violet" "blue" }
-- output { " 67 megaohms" }

-- Minimum possible value
-- ==
-- input { "black" "black" "black" }
-- output { "  0 ohms    " }

-- Maximum possible value
-- ==
-- input { "white" "white" "white" }
-- output { " 99 gigaohms" }

-- First two colors make an invalid octal number
-- ==
-- input { "black" "grey" "black" }
-- output { "  8 ohms    " }

-- Ignore extra colors
-- ==
-- input { "blue" "green" "yellow" }
-- output { "650 kiloohms" }

-- Orange and orange and red
-- ==
-- input { "orange" "orange" "red" }
-- output { "3.3 kiloohms" }

-- Orange and orange and green
-- ==
-- input { "orange" "orange" "green" }
-- output { "3.3 megaohms" }

-- White and white and violet
-- ==
-- input { "white" "white" "violet" }
-- output { "990 megaohms" }

-- White and white and grey
-- ==
-- input { "white" "white" "grey" }
-- output { "9.9 gigaohms" }

def main (first: []u8) (second: []u8) (third: []u8): []u8 =
  let result = label first second third
  in
    result.value ++ " " ++ result.unit
