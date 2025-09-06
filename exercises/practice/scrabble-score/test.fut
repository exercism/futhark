import "scrabble_score"

-- lowercase letter
-- ==
-- input { "a" }
-- output { 1 }

-- uppercase letter
-- ==
-- input { "A" }
-- output { 1 }

-- valuable letter
-- ==
-- input { "f" }
-- output { 4 }

-- short word
-- ==
-- input { "at" }
-- output { 2 }

-- short, valuable word
-- ==
-- input { "zoo" }
-- output { 12 }

-- medium word
-- ==
-- input { "street" }
-- output { 6 }

-- medium, valuable word
-- ==
-- input { "quirky" }
-- output { 22 }

-- long, mixed-case word
-- ==
-- input { "OxyphenButazone" }
-- output { 41 }

-- english-like word
-- ==
-- input { "pinata" }
-- output { 8 }

-- empty input
-- ==
-- input { "" }
-- output { 0 }

-- entire alphabet available
-- ==
-- input { "abcdefghijklmnopqrstuvwxyz" }
-- output { 87 }

let main (letters: []u8): i32 =
  score letters
