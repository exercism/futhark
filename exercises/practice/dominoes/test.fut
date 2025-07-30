import "dominoes"

-- empty input = empty output
-- ==
-- input  { empty([0][2]i32) }
-- output { true }

-- singleton input = singleton output
-- ==
-- input  { [[1, 1]] }
-- output { true }

-- singleton that can't be chained
-- ==
-- input  { [[1, 2]] }
-- output { false }

-- three elements
-- ==
-- input  { [[1, 2], [3, 1], [2, 3]] }
-- output { true }

-- can reverse dominoes
-- ==
-- input  { [[1, 2], [1, 3], [2, 3]] }
-- output { true }

-- can't be chained
-- ==
-- input  { [[1, 2], [4, 1], [2, 3]] }
-- output { false }

-- disconnected - simple
-- ==
-- input  { [[1, 1], [2, 2]] }
-- output { false }

-- disconnected - double loop
-- ==
-- input  { [[1, 2], [2, 1], [3, 4], [4, 3]] }
-- output { false }

-- disconnected - single isolated
-- ==
-- input  { [[1, 2], [2, 3], [3, 1], [4, 4]] }
-- output { false }

-- need backtrack
-- ==
-- input  { [[1, 2], [2, 3], [3, 1], [2, 4], [2, 4]] }
-- output { true }

-- separate loops
-- ==
-- input  { [[1, 2], [2, 3], [3, 1], [1, 1], [2, 2], [3, 3]] }
-- output { true }

-- nine elements
-- ==
-- input  { [[1, 2], [5, 3], [3, 1], [1, 2], [2, 4], [1, 6], [2, 3], [3, 4], [5, 6]] }
-- output { true }

-- separate three-domino loops
-- ==
-- input  { [[1, 2], [2, 3], [3, 1], [4, 5], [5, 6], [6, 4]] }
-- output { false }

let main [n] (dominoes: [n][2]i32): bool =
  can_chain dominoes
