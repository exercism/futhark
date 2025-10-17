import "resistor_color_duo"

-- Brown and black
-- ==
-- input { "brown" "black" }
-- output { 10 }

-- Blue and grey
-- ==
-- input { "blue" "grey" }
-- output { 68 }

-- Yellow and violet
-- ==
-- input { "yellow" "violet" }
-- output { 47 }

-- White and red
-- ==
-- input { "white" "red" }
-- output { 92 }

-- Orange and orange
-- ==
-- input { "orange" "orange" }
-- output { 33 }

-- Ignore additional colors
-- ==
-- input { "green" "brown" }
-- output { 51 }

-- Black and brown, one-digit
-- ==
-- input { "black" "brown" }
-- output { 1 }

let main (first: []u8) (second: []u8): i32 =
  value first second
