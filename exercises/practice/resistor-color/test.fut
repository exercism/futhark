import "resistor_color"

-- Black
-- ==
-- input { "black" }
-- output { 0 }

-- White
-- ==
-- input { "white" }
-- output { 9 }

-- Orange
-- ==
-- input { "orange" }
-- output { 3 }

let main (color: []u8): i32 =
  colorCode color
