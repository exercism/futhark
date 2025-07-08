import "atbash_cipher"

-- encode yes
-- ==
-- entry: test_encode
-- input { "yes" }
-- output { "bvh" }

-- encode no
-- ==
-- entry: test_encode
-- input { "no" }
-- output { "ml" }

-- encode OMG
-- ==
-- entry: test_encode
-- input { "OMG" }
-- output { "lnt" }

-- encode spaces
-- ==
-- entry: test_encode
-- input { "O M G" }
-- output { "lnt" }

-- encode mindblowingly
-- ==
-- entry: test_encode
-- input { "mindblowingly" }
-- output { "nrmwy oldrm tob" }

-- encode numbers
-- ==
-- entry: test_encode
-- input { "Testing,1 2 3, testing." }
-- output { "gvhgr mt123 gvhgr mt" }

-- encode deep thought
-- ==
-- entry: test_encode
-- input { "Truth is fiction." }
-- output { "gifgs rhurx grlm" }

-- encode all the letters
-- ==
-- entry: test_encode
-- input { "The quick brown fox jumps over the lazy dog." }
-- output { "gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt" }

-- decode exercism
-- ==
-- entry: test_decode
-- input { "vcvix rhn" }
-- output { "exercism" }

-- decode a sentence
-- ==
-- entry: test_decode
-- input { "zmlyh gzxov rhlug vmzhg vkkrm thglm v" }
-- output { "anobstacleisoftenasteppingstone" }

-- decode numbers
-- ==
-- entry: test_decode
-- input { "gvhgr mt123 gvhgr mt" }
-- output { "testing123testing" }

-- decode all the letters
-- ==
-- entry: test_decode
-- input { "gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt" }
-- output { "thequickbrownfoxjumpsoverthelazydog" }

-- decode with too many spaces
-- ==
-- entry: test_decode
-- input { "vc vix    r hn" }
-- output { "exercism" }

-- decode with no spaces
-- ==
-- entry: test_decode
-- input { "zmlyhgzxovrhlugvmzhgvkkrmthglmv" }
-- output { "anobstacleisoftenasteppingstone" }

entry test_encode (phrase: []u8): []u8 =
  encode phrase

entry test_decode (phrase: []u8): []u8 =
  decode phrase
