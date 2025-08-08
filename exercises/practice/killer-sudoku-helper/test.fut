import "killer_sudoku_helper"

-- 1
-- ==
-- input { 1 1 empty([0]i32) }
-- output { [[1]] }

-- 2
-- ==
-- input { 2 1 empty([0]i32) }
-- output { [[2]] }

-- 3
-- ==
-- input { 3 1 empty([0]i32) }
-- output { [[3]] }

-- 4
-- ==
-- input { 4 1 empty([0]i32) }
-- output { [[4]] }

-- 5
-- ==
-- input { 5 1 empty([0]i32) }
-- output { [[5]] }

-- 6
-- ==
-- input { 6 1 empty([0]i32) }
-- output { [[6]] }

-- 7
-- ==
-- input { 7 1 empty([0]i32) }
-- output { [[7]] }

-- 8
-- ==
-- input { 8 1 empty([0]i32) }
-- output { [[8]] }

-- 9
-- ==
-- input { 9 1 empty([0]i32) }
-- output { [[9]] }

-- Cage with sum 45 contains all digits 1:9
-- ==
-- input { 45 9 empty([0]i32) }
-- output { [[1, 2, 3, 4, 5, 6, 7, 8, 9]] }

-- Cage with only 1 possible combination
-- ==
-- input { 7 3 empty([0]i32) }
-- output { [[1, 2, 4]] }

-- Cage with several combinations
-- ==
-- input { 10 2 empty([0]i32) }
-- output { [[1, 9], [2, 8], [3, 7], [4, 6]] }

-- Cage with several combinations that is restricted
-- ==
-- input { 10 2 [1, 4] }
-- output { [[2, 8], [3, 7]] }

def main (sum: i32) (size: i32) (exclude: []i32): [][]i32 =
  combinations sum size exclude
