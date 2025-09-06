import "raindrops"

-- the sound for 1 is 1
-- ==
-- input { 1 }
-- output { "1" }

-- the sound for 3 is Pling
-- ==
-- input { 3 }
-- output { "Pling" }

-- the sound for 5 is Plang
-- ==
-- input { 5 }
-- output { "Plang" }

-- the sound for 7 is Plong
-- ==
-- input { 7 }
-- output { "Plong" }

-- the sound for 6 is Pling as it has a factor 3
-- ==
-- input { 6 }
-- output { "Pling" }

-- 2 to the power 3 does not make a raindrop sound as 3 is the exponent not the base
-- ==
-- input { 8 }
-- output { "8" }

-- the sound for 9 is Pling as it has a factor 3
-- ==
-- input { 9 }
-- output { "Pling" }

-- the sound for 10 is Plang as it has a factor 5
-- ==
-- input { 10 }
-- output { "Plang" }

-- the sound for 14 is Plong as it has a factor of 7
-- ==
-- input { 14 }
-- output { "Plong" }

-- the sound for 15 is PlingPlang as it has factors 3 and 5
-- ==
-- input { 15 }
-- output { "PlingPlang" }

-- the sound for 21 is PlingPlong as it has factors 3 and 7
-- ==
-- input { 21 }
-- output { "PlingPlong" }

-- the sound for 25 is Plang as it has a factor 5
-- ==
-- input { 25 }
-- output { "Plang" }

-- the sound for 27 is Pling as it has a factor 3
-- ==
-- input { 27 }
-- output { "Pling" }

-- the sound for 35 is PlangPlong as it has factors 5 and 7
-- ==
-- input { 35 }
-- output { "PlangPlong" }

-- the sound for 49 is Plong as it has a factor 7
-- ==
-- input { 49 }
-- output { "Plong" }

-- the sound for 52 is 52
-- ==
-- input { 52 }
-- output { "52" }

-- the sound for 105 is PlingPlangPlong as it has factors 3, 5 and 7
-- ==
-- input { 105 }
-- output { "PlingPlangPlong" }

-- the sound for 3125 is Plang as it has a factor 5
-- ==
-- input { 3125 }
-- output { "Plang" }

let main (number: i32): []u8 =
  convert number
