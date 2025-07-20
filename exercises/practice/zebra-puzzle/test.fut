import "zebra_puzzle"

-- resident who drinks water
-- ==
-- input { 0i64 }
-- output { "Norwegian" }

-- resident who owns zebra
-- ==
-- input { 1i64 }
-- output { "Japanese" }

let main (question_index: i64): []u8 =
  answer ([#drinks_water, #owns_zebra][question_index])
