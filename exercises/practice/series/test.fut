import "series"

-- slices of one from one
-- ==
-- input  { "1" 1i64 }
-- output { ["1"] }

-- slices of one from two
-- ==
-- input  { "12" 1i64 }
-- output { ["1", "2"] }

-- slices of two
-- ==
-- input  { "35" 2i64 }
-- output { ["35"] }

-- slices of two overlap
-- ==
-- input  { "9142" 2i64 }
-- output { ["91", "14", "42"] }

-- slices can include duplicates
-- ==
-- input  { "777777" 3i64 }
-- output { ["777", "777", "777", "777"] }

-- slices of a long series
-- ==
-- input  { "918493904243" 5i64 }
-- output { ["91849", "18493", "84939", "49390", "93904", "39042", "90424", "04243"] }

-- slice length is too large
-- ==
-- input  { "12345" 6i64 }
-- error: Error*

-- slice length is way too large
-- ==
-- input  { "12345" 42i64 }
-- error: Error*

-- slice length cannot be zero
-- ==
-- input  { "12345" 0i64 }
-- error: Error*

-- slice length cannot be negative
-- ==
-- input  { "123" -1i64 }
-- error: Error*

-- empty series is invalid
-- ==
-- input  { "" 1i64 }
-- error: Error*

let main (series: []u8) (sliceLength: i64): [][]u8 =
  slices series sliceLength
