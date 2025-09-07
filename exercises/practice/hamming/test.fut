import "hamming"

-- empty strands
-- ==
-- input { "" "" }
-- output { 0 }

-- single letter identical strands
-- ==
-- input { "A" "A" }
-- output { 0 }

-- single letter different strands
-- ==
-- input { "G" "T" }
-- output { 1 }

-- long identical strands
-- ==
-- input { "GGACTGAAATCTG" "GGACTGAAATCTG" }
-- output { 0 }

-- long different strands
-- ==
-- input { "GGACGGATTCTG" "AGGACGGATTCT" }
-- output { 9 }

-- disallow first strand longer
-- ==
-- input { "AATG" "AAA" }
-- error: Error*

-- disallow second strand longer
-- ==
-- input { "ATA" "AGTG" }
-- error: Error*

-- disallow empty first strand
-- ==
-- input { "" "G" }
-- error: Error*

-- disallow empty second strand
-- ==
-- input { "G" "" }
-- error: Error*

let main (strand1: []u8) (strand2: []u8): i32 =
  distance strand1 strand2
