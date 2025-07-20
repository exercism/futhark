import "rail_fence_cipher"

-- encode with two rails
-- ==
-- entry: test_encode
-- input  { "XOXOXOXOXOXOXOXOXO" 2i64 }
-- output { "XXXXXXXXXOOOOOOOOO" }

-- encode with three rails
-- ==
-- entry: test_encode
-- input  { "WEAREDISCOVEREDFLEEATONCE" 3i64 }
-- output { "WECRLTEERDSOEEFEAOCAIVDEN" }

-- encode with ending in the middle
-- ==
-- entry: test_encode
-- input  { "EXERCISES" 4i64 }
-- output { "ESXIEECSR" }

-- decode with three rails
-- ==
-- entry: test_decode
-- input  { "TEITELHDVLSNHDTISEIIEA" 3i64 }
-- output { "THEDEVILISINTHEDETAILS" }

-- decode with five rails
-- ==
-- entry: test_decode
-- input  { "EIEXMSMESAORIWSCE" 5i64 }
-- output { "EXERCISMISAWESOME" }

-- decode with six rails
-- ==
-- entry: test_decode
-- input  { "133714114238148966225439541018335470986172518171757571896261" 6i64 }
-- output { "112358132134558914423337761098715972584418167651094617711286" }

entry test_encode (msg: []u8) (rails: i64): []u8 =
  encode msg rails

entry test_decode (msg: []u8) (rails: i64): []u8 =
  decode msg rails
