import "pythagorean_triplet"

-- triplets whose sum is 12
-- ==
-- input { 12 }
-- output { [[3, 4, 5]] }

-- triplets whose sum is 108
-- ==
-- input { 108 }
-- output { [[27, 36, 45]] }

-- triplets whose sum is 1000
-- ==
-- input { 1000 }
-- output { [[200, 375, 425]] }

-- no matching triplets for 1001
-- ==
-- input { 1001 }
-- output { empty([0][3]i32) }

-- returns all matching triplets
-- ==
-- input { 90 }
-- output { [[9, 40, 41], [15, 36, 39]] }

-- several matching triplets
-- ==
-- input { 840 }
-- output { [[40, 399, 401], [56, 390, 394], [105, 360, 375], [120, 350, 370], [140, 336, 364], [168, 315, 357], [210, 280, 350], [240, 252, 348]] }

-- triplets for large number
-- ==
-- input { 30000 }
-- output { [[1200, 14375, 14425], [1875, 14000, 14125], [5000, 12000, 13000], [6000, 11250, 12750], [7500, 10000, 12500]] }

let main (n: i32): [][3]i32 =
  triplets_with_sum n
