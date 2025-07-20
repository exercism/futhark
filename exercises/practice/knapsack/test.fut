import "knapsack"

-- no items
-- ==
-- input { empty([0]i32) empty([0]i32) 100 }
-- output { 0 }

-- one item, too heavy
-- ==
-- input { [100] [1] 10 }
-- output { 0 }

-- five items (cannot be greedy by weight)
-- ==
-- input { [2, 2, 2, 2, 10] [5, 5, 5, 5, 21] 10 }
-- output { 21 }

-- five items (cannot be greedy by value)
-- ==
-- input { [2, 2, 2, 2, 10] [20, 20, 20, 20, 50] 10 }
-- output { 80 }

-- example knapsack
-- ==
-- input { [5, 4, 6, 4] [10, 40, 30, 50] 10 }
-- output { 90 }

-- 8 items
-- ==
-- input { [25, 35, 45, 5, 25, 3, 2, 2] [350, 400, 450, 20, 70, 8, 5, 5] 104 }
-- output { 900 }

-- 15 items
-- ==
-- input { [70, 73, 77, 80, 82, 87, 90, 94, 98, 106, 110, 113, 115, 118, 120] [135, 139, 149, 150, 156, 163, 173, 184, 192, 201, 210, 214, 221, 229, 240] 750 }
-- output { 1458 }

def main [n] (weights: [n]i32) (values: [n]i32) (maximum_weight: i32): i32 =
  maximum_value weights values maximum_weight
