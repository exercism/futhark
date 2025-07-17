import "book_store"

-- Only a single book
-- ==
-- input { [1] }
-- output { 800 }

-- Two of the same book
-- ==
-- input { [2, 2] }
-- output { 1600 }

-- Empty basket
-- ==
-- input { empty([0]i32) }
-- output { 0 }

-- Two different books
-- ==
-- input { [1, 2] }
-- output { 1520 }

-- Three different books
-- ==
-- input { [1, 2, 3] }
-- output { 2160 }

-- Four different books
-- ==
-- input { [1, 2, 3, 4] }
-- output { 2560 }

-- Five different books
-- ==
-- input { [1, 2, 3, 4, 5] }
-- output { 3000 }

-- Two groups of four is cheaper than group of five plus group of three
-- ==
-- input { [1, 1, 2, 2, 3, 3, 4, 5] }
-- output { 5120 }

-- Two groups of four is cheaper than groups of five and three
-- ==
-- input { [1, 1, 2, 3, 4, 4, 5, 5] }
-- output { 5120 }

-- Group of four plus group of two is cheaper than two groups of three
-- ==
-- input { [1, 1, 2, 2, 3, 4] }
-- output { 4080 }

-- Two each of first four books and one copy each of rest
-- ==
-- input { [1, 1, 2, 2, 3, 3, 4, 4, 5] }
-- output { 5560 }

-- Two copies of each book
-- ==
-- input { [1, 1, 2, 2, 3, 3, 4, 4, 5, 5] }
-- output { 6000 }

-- Three copies of first book and two each of remaining
-- ==
-- input { [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 1] }
-- output { 6800 }

-- Three each of first two books and two each of remaining books
-- ==
-- input { [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 1, 2] }
-- output { 7520 }

-- Four groups of four are cheaper than two groups each of five and three
-- ==
-- input { [1, 1, 2, 2, 3, 3, 4, 5, 1, 1, 2, 2, 3, 3, 4, 5] }
-- output { 10240 }

-- Check that groups of four are created properly even when there are more groups of three than groups of five
-- ==
-- input { [1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 5, 5] }
-- output { 14560 }

-- One group of one and four is cheaper than one group of two and three
-- ==
-- input { [1, 1, 2, 3, 4] }
-- output { 3360 }

-- One group of one and two plus three groups of four is cheaper than one group of each size
-- ==
-- input { [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5] }
-- output { 10000 }

let main (basket: []i32): i32 =
  total basket
