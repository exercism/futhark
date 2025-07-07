import "binary_search"

-- finds a value in an array with one element
-- ==
-- input { [6] 6 }
-- output { 0 }

-- finds a value in the middle of an array
-- ==
-- input { [1, 3, 4, 6, 8, 9, 11] 6 }
-- output { 3 }

-- finds a value at the beginning of an array
-- ==
-- input { [1, 3, 4, 6, 8, 9, 11] 1 }
-- output { 0 }

-- finds a value at the end of an array
-- ==
-- input { [1, 3, 4, 6, 8, 9, 11] 11 }
-- output { 6 }

-- finds a value in an array of odd length
-- ==
-- input { [1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634] 144 }
-- output { 9 }

-- finds a value in an array of even length
-- ==
-- input { [1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377] 21 }
-- output { 5 }

-- identifies that a value is not included in the array
-- ==
-- input { [1, 3, 4, 6, 8, 9, 11] 7 }
-- error: Error*

-- a value smaller than the array's smallest value is not found
-- ==
-- input { [1, 3, 4, 6, 8, 9, 11] 0 }
-- error: Error*

-- a value larger than the array's largest value is not found
-- ==
-- input { [1, 3, 4, 6, 8, 9, 11] 13 }
-- error: Error*

-- nothing is found in an empty array
-- ==
-- input { empty([0]i32) 1 }
-- error: Error*

-- nothing is found when the left and right bounds cross
-- ==
-- input { [1, 2] 0 }
-- error: Error*

let main (array: []i32) (value: i32): i32 =
  find array value
