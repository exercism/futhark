import "run_length_encoding"

-- empty string
-- ==
-- entry: test_encode
-- input { "" }
-- output { "" }

-- single characters only are encoded without count
-- ==
-- entry: test_encode
-- input { "XYZ" }
-- output { "XYZ" }

-- string with no single characters
-- ==
-- entry: test_encode
-- input { "AABBBCCCC" }
-- output { "2A3B4C" }

-- single characters mixed with repeated characters
-- ==
-- entry: test_encode
-- input { "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB" }
-- output { "12WB12W3B24WB" }

-- multiple whitespace mixed in string
-- ==
-- entry: test_encode
-- input { "  hsqq qww  " }
-- output { "2 hs2q q2w2 " }

-- lowercase characters
-- ==
-- entry: test_encode
-- input { "aabbbcccc" }
-- output { "2a3b4c" }

-- empty string
-- ==
-- entry: test_decode
-- input { "" }
-- output { "" }

-- single characters only
-- ==
-- entry: test_decode
-- input { "XYZ" }
-- output { "XYZ" }

-- string with no single characters
-- ==
-- entry: test_decode
-- input { "2A3B4C" }
-- output { "AABBBCCCC" }

-- single characters with repeated characters
-- ==
-- entry: test_decode
-- input { "12WB12W3B24WB" }
-- output { "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB" }

-- multiple whitespace mixed in string
-- ==
-- entry: test_decode
-- input { "2 hs2q q2w2 " }
-- output { "  hsqq qww  " }

-- lowercase string
-- ==
-- entry: test_decode
-- input { "2a3b4c" }
-- output { "aabbbcccc" }

-- encode followed by decode gives original string
-- ==
-- entry: test_consistency
-- input { "zzz ZZ  zZ" }
-- output { "zzz ZZ  zZ" }

entry test_encode (string: []u8): []u8 =
  encode string

entry test_decode (string: []u8): []u8 =
  decode string

entry test_consistency (string: []u8): []u8 =
  decode (encode string)
