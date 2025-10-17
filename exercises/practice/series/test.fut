import "series"

-- slices of one from one
-- ==
-- input  { "1" 1 }
-- output { ["1"] }

-- slices of one from two
-- ==
-- input  { "12" 1 }
-- output { ["1", "2"] }

-- slices of two
-- ==
-- input  { "35" 2 }
-- output { ["35"] }

-- slices of two overlap
-- ==
-- input  { "9142" 2 }
-- output { ["91", "14", "42"] }

-- slices can include duplicates
-- ==
-- input  { "777777" 3 }
-- output { ["777", "777", "777", "777"] }

-- slices of a long series
-- ==
-- input  { "918493904243" 5 }
-- output { ["91849", "18493", "84939", "49390", "93904", "39042", "90424", "04243"] }

-- slice length is too large
-- ==
-- input  { "12345" 6 }
-- error: Error*

-- slice length is way too large
-- ==
-- input  { "12345" 42 }
-- error: Error*

-- slice length cannot be zero
-- ==
-- input  { "12345" 0 }
-- error: Error*

-- slice length cannot be negative
-- ==
-- input  { "123" -1 }
-- error: Error*

-- empty series is invalid
-- ==
-- input  { "" 1 }
-- error: Error*

let main (series: []u8) (sliceLength: i32): [][]u8 =
  slices series (i64.i32 sliceLength)
