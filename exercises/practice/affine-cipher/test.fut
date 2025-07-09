import "affine_cipher"

-- encode yes
-- ==
-- entry: test_encode
-- input { 5 7 "yes" }
-- output { "xbt" }

-- encode no
-- ==
-- entry: test_encode
-- input { 15 18 "no" }
-- output { "fu" }

-- encode OMG
-- ==
-- entry: test_encode
-- input { 21 3 "OMG" }
-- output { "lvz" }

-- encode O M G
-- ==
-- entry: test_encode
-- input { 25 47 "O M G" }
-- output { "hjp" }

-- encode mindblowingly
-- ==
-- entry: test_encode
-- input { 11 15 "mindblowingly" }
-- output { "rzcwa gnxzc dgt" }

-- encode numbers
-- ==
-- entry: test_encode
-- input { 3 4 "Testing,1 2 3, testing." }
-- output { "jqgjc rw123 jqgjc rw" }

-- encode deep thought
-- ==
-- entry: test_encode
-- input { 5 17 "Truth is fiction." }
-- output { "iynia fdqfb ifje" }

-- encode all the letters
-- ==
-- entry: test_encode
-- input { 17 33 "The quick brown fox jumps over the lazy dog." }
-- output { "swxtj npvyk lruol iejdc blaxk swxmh qzglf" }

-- encode with a not coprime to m
-- ==
-- entry: test_encode
-- input { 6 17 "This is a test." }
-- error: Error*

-- decode exercism
-- ==
-- entry: test_decode
-- input { 3 7 "tytgn fjr" }
-- output { "exercism" }

-- decode a sentence
-- ==
-- entry: test_decode
-- input { 19 16 "qdwju nqcro muwhn odqun oppmd aunwd o" }
-- output { "anobstacleisoftenasteppingstone" }

-- decode numbers
-- ==
-- entry: test_decode
-- input { 25 7 "odpoz ub123 odpoz ub" }
-- output { "testing123testing" }

-- decode all the letters
-- ==
-- entry: test_decode
-- input { 17 33 "swxtj npvyk lruol iejdc blaxk swxmh qzglf" }
-- output { "thequickbrownfoxjumpsoverthelazydog" }

-- decode with no spaces in input
-- ==
-- entry: test_decode
-- input { 17 33 "swxtjnpvyklruoliejdcblaxkswxmhqzglf" }
-- output { "thequickbrownfoxjumpsoverthelazydog" }

-- decode with too many spaces
-- ==
-- entry: test_decode
-- input { 15 16 "vszzm    cly   yd cg    qdp" }
-- output { "jollygreengiant" }

-- decode with a not coprime to m
-- ==
-- entry: test_decode
-- input { 13 5 "Test" }
-- error: Error*

entry test_encode (a: i32) (b: i32) (phrase: []u8): []u8 =
  encode a b phrase

entry test_decode (a: i32) (b: i32) (phrase: []u8): []u8 =
  decode a b phrase
