import "difference_of_squares"

-- square of sum 1
-- ==
-- entry: test_square_of_sum
-- input { 1 }
-- output { 1 }

-- square of sum 5
-- ==
-- entry: test_square_of_sum
-- input { 5 }
-- output { 225 }

-- square of sum 100
-- ==
-- entry: test_square_of_sum
-- input { 100 }
-- output { 25502500 }

-- sum of squares 1
-- ==
-- entry: test_sum_of_squares
-- input { 1 }
-- output { 1 }

-- sum of squares 5
-- ==
-- entry: test_sum_of_squares
-- input { 5 }
-- output { 55 }

-- sum of squares 100
-- ==
-- entry: test_sum_of_squares
-- input { 100 }
-- output { 338350 }

-- difference of squares 1
-- ==
-- entry: test_difference_of_squares
-- input { 1 }
-- output { 0 }

-- difference of squares 5
-- ==
-- entry: test_difference_of_squares
-- input { 5 }
-- output { 170 }

-- difference of squares 100
-- ==
-- entry: test_difference_of_squares
-- input { 100 }
-- output { 25164150 }

entry test_square_of_sum (n: i32): i32 =
  square_of_sum n

entry test_sum_of_squares (n: i32): i32 =
  sum_of_squares n

entry test_difference_of_squares (n: i32): i32 =
  difference_of_squares n
