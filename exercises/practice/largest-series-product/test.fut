import "largest_series_product"

-- finds the largest product if span equals length
-- ==
-- input { "29" 2 }
-- output { 18 }

-- can find the largest product of 2 with numbers in order
-- ==
-- input { "0123456789" 2 }
-- output { 72 }

-- can find the largest product of 2
-- ==
-- input { "576802143" 2 }
-- output { 48 }

-- can find the largest product of 3 with numbers in order
-- ==
-- input { "0123456789" 3 }
-- output { 504 }

-- can find the largest product of 3
-- ==
-- input { "1027839564" 3 }
-- output { 270 }

-- can find the largest product of 5 with numbers in order
-- ==
-- input { "0123456789" 5 }
-- output { 15120 }

-- can get the largest product of a big number
-- ==
-- input { "73167176531330624919225119674426574742355349194934" 6 }
-- output { 23520 }

-- reports zero if the only digits are zero
-- ==
-- input { "0000" 2 }
-- output { 0 }

-- reports zero if all spans include zero
-- ==
-- input { "99099" 3 }
-- output { 0 }

-- rejects span longer than string length
-- ==
-- input { "123" 4 }
-- error: Error*

-- reports 1 for empty string and empty product (0 span)
-- ==
-- input { "" 0 }
-- output { 1 }

-- reports 1 for nonempty string and empty product (0 span)
-- ==
-- input { "123" 0 }
-- output { 1 }

-- rejects empty string and nonzero span
-- ==
-- input { "" 1 }
-- error: Error*

-- rejects invalid character in digits
-- ==
-- input { "1234a5" 2 }
-- error: Error*

-- rejects negative span
-- ==
-- input { "12345" -1 }
-- error: Error*

let main (digits: []u8) (span: i32) : i32 =
  largest_product digits span
