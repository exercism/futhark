import "matrix"

-- extract row from one number matrix
-- ==
-- entry: test_row
-- input { "1" 1 }
-- output { [1] }

-- can extract row
-- ==
-- entry: test_row
-- input { "1 2\n3 4" 2 }
-- output { [3, 4] }

-- extract row where numbers have different widths
-- ==
-- entry: test_row
-- input { "1 2\n10 20" 2 }
-- output { [10, 20] }

-- can extract row from non-square matrix with no corresponding column
-- ==
-- entry: test_row
-- input { "1 2 3\n4 5 6\n7 8 9\n8 7 6" 4 }
-- output { [8, 7, 6] }

-- extract column from one number matrix
-- ==
-- entry: test_column
-- input { "1" 1 }
-- output { [1] }

-- can extract column
-- ==
-- entry: test_column
-- input { "1 2 3\n4 5 6\n7 8 9" 3 }
-- output { [3, 6, 9] }

-- can extract column from non-square matrix with no corresponding row
-- ==
-- entry: test_column
-- input { "1 2 3 4\n5 6 7 8\n9 8 7 6" 4 }
-- output { [4, 8, 6] }

-- extract column where numbers have different widths
-- ==
-- entry: test_column
-- input { "89 1903 3\n18 3 1\n9 4 800" 2 }
-- output { [1903, 3, 4] }

entry test_row (string: []u8) (index: i32): []i32 =
  row string index

entry test_column (string: []u8) (index: i32): []i32 =
  column string index
