import "sublist"

-- empty lists
-- ==
-- input  { empty([0]i32) empty([0]i32) }
-- output { "equal" }

-- empty list within non empty list
-- ==
-- input  { empty([0]i32) [1, 2, 3] }
-- output { "sublist" }

-- non empty list contains empty list
-- ==
-- input  { [1, 2, 3] empty([0]i32) }
-- output { "superlist" }

-- list equals itself
-- ==
-- input  { [1, 2, 3] [1, 2, 3] }
-- output { "equal" }

-- different lists
-- ==
-- input  { [1, 2, 3] [2, 3, 4] }
-- output { "unequal" }

-- false start
-- ==
-- input  { [1, 2, 5] [0, 1, 2, 3, 1, 2, 5, 6] }
-- output { "sublist" }

-- consecutive
-- ==
-- input  { [1, 1, 2] [0, 1, 1, 1, 2, 1, 2] }
-- output { "sublist" }

-- sublist at start
-- ==
-- input  { [0, 1, 2] [0, 1, 2, 3, 4, 5] }
-- output { "sublist" }

-- sublist in middle
-- ==
-- input  { [2, 3, 4] [0, 1, 2, 3, 4, 5] }
-- output { "sublist" }

-- sublist at end
-- ==
-- input  { [3, 4, 5] [0, 1, 2, 3, 4, 5] }
-- output { "sublist" }

-- at start of superlist
-- ==
-- input  { [0, 1, 2, 3, 4, 5] [0, 1, 2] }
-- output { "superlist" }

-- in middle of superlist
-- ==
-- input  { [0, 1, 2, 3, 4, 5] [2, 3] }
-- output { "superlist" }

-- at end of superlist
-- ==
-- input  { [0, 1, 2, 3, 4, 5] [3, 4, 5] }
-- output { "superlist" }

-- first list missing element from second list
-- ==
-- input  { [1, 3] [1, 2, 3] }
-- output { "unequal" }

-- second list missing element from first list
-- ==
-- input  { [1, 2, 3] [1, 3] }
-- output { "unequal" }

-- first list missing additional digits from second list
-- ==
-- input  { [1, 2] [1, 22] }
-- output { "unequal" }

-- order matters to a list
-- ==
-- input  { [1, 2, 3] [3, 2, 1] }
-- output { "unequal" }

-- same digits but different numbers
-- ==
-- input  { [1, 0, 1] [10, 1] }
-- output { "unequal" }

local def name (r: relation): []u8 =
  match r
    case #equal     -> "equal"
    case #superlist -> "superlist"
    case #sublist   -> "sublist"
    case #unequal   -> "unequal"

def main (list_one: []i32) (list_two: []i32): []u8 =
  name (compare list_one list_two)
