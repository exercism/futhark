import "spiral_matrix"

-- empty spiral
-- ==
-- input { 0 }
-- output { empty([0][0]i32) }

-- trivial spiral
-- ==
-- input { 1 }
-- output { [[1]] }

-- spiral of size 2
-- ==
-- input { 2 }
-- output { [[1, 2], [4, 3]] }

-- spiral of size 3
-- ==
-- input { 3 }
-- output { [[1, 2, 3], [8, 9, 4], [7, 6, 5]] }

-- spiral of size 4
-- ==
-- input { 4 }
-- output { [[1, 2, 3, 4], [12, 13, 14, 5], [11, 16, 15, 6], [10, 9, 8, 7]] }

-- spiral of size 5
-- ==
-- input { 5 }
-- output { [[1, 2, 3, 4, 5], [16, 17, 18, 19, 6], [15, 24, 25, 20, 7], [14, 23, 22, 21, 8], [13, 12, 11, 10, 9]] }

def main (size: i32): [][]i32 =
  spiral_matrix size
