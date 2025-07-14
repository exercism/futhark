import "change"

-- change for 1 cent
-- ==
-- input { [1, 5, 10, 25] 1 }
-- output { [1] }

-- single coin change
-- ==
-- input { [1, 5, 10, 25, 100] 25 }
-- output { [25] }

-- multiple coin change
-- ==
-- input { [1, 5, 10, 25, 100] 15 }
-- output { [5, 10] }

-- change with Lilliputian Coins
-- ==
-- input { [1, 4, 15, 20, 50] 23 }
-- output { [4, 4, 15] }

-- change with Lower Elbonia Coins
-- ==
-- input { [1, 5, 10, 21, 25] 63 }
-- output { [21, 21, 21] }

-- large target values
-- ==
-- input { [1, 2, 5, 10, 20, 50, 100] 999 }
-- output { [2, 2, 5, 20, 20, 50, 100, 100, 100, 100, 100, 100, 100, 100, 100] }

-- possible change without unit coins available
-- ==
-- input { [2, 5, 10, 20, 50] 21 }
-- output { [2, 2, 2, 5, 10] }

-- another possible change without unit coins available
-- ==
-- input { [4, 5] 27 }
-- output { [4, 4, 4, 5, 5, 5] }

-- a greedy approach is not optimal
-- ==
-- input { [1, 10, 11] 20 }
-- output { [10, 10] }

-- no coins make 0 change
-- ==
-- input { [1, 5, 10, 21, 25] 0 }
-- output { empty([0]i32) }

-- error testing for change smaller than the smallest of coins
-- ==
-- input { [5, 10] 3 }
-- error: Error*

-- error if no combination can add up to target
-- ==
-- input { [5, 10] 94 }
-- error: Error*

-- cannot find negative change values
-- ==
-- input { [1, 2, 5] -5 }
-- error: Error*

def main (coins: []i32) (target: i32): []i32 =
  find_fewest_coins coins target
