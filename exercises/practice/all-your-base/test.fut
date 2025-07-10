import "all_your_base"

-- single bit one to decimal
-- ==
-- input { 2 [1] 10 }
-- output { [1] }

-- binary to single decimal
-- ==
-- input { 2 [1, 0, 1] 10 }
-- output { [5] }

-- single decimal to binary
-- ==
-- input { 10 [5] 2 }
-- output { [1, 0, 1] }

-- binary to multiple decimal
-- ==
-- input { 2 [1, 0, 1, 0, 1, 0] 10 }
-- output { [4, 2] }

-- decimal to binary
-- ==
-- input { 10 [4, 2] 2 }
-- output { [1, 0, 1, 0, 1, 0] }

-- trinary to hexadecimal
-- ==
-- input { 3 [1, 1, 2, 0] 16 }
-- output { [2, 10] }

-- hexadecimal to trinary
-- ==
-- input { 16 [2, 10] 3 }
-- output { [1, 1, 2, 0] }

-- 15-bit integer
-- ==
-- input { 97 [3, 46, 60] 73 }
-- output { [6, 10, 45] }

-- empty list
-- ==
-- input { 2 empty([0]i32) 10 }
-- output { [0] }

-- single zero
-- ==
-- input { 10 [0] 2 }
-- output { [0] }

-- multiple zeros
-- ==
-- input { 10 [0, 0, 0] 2 }
-- output { [0] }

-- leading zeros
-- ==
-- input { 7 [0, 6, 0] 10 }
-- output { [4, 2] }

-- input base is one
-- ==
-- input { 1 [0] 10 }
-- error: Error*

-- input base is zero
-- ==
-- input { 0 empty([0]i32) 10 }
-- error: Error*

-- input base is negative
-- ==
-- input { -2 [1] 10 }
-- error: Error*

-- negative digit
-- ==
-- input { 2 [1, -1, 1, 0, 1, 0] 10 }
-- error: Error*

-- invalid positive digit
-- ==
-- input { 2 [1, 2, 1, 0, 1, 0] 10 }
-- error: Error*

-- output base is one
-- ==
-- input { 2 [1, 0, 1, 0, 1, 0] 1 }
-- error: Error*

-- output base is zero
-- ==
-- input { 10 [7] 0 }
-- error: Error*

-- output base is negative
-- ==
-- input { 2 [1] -7 }
-- error: Error*

-- both bases are negative
-- ==
-- input { -2 [1] -7 }
-- error: Error*

def main (input_base: i32) (digits: []i32) (output_base: i32): []i32 =
  rebase input_base digits output_base
