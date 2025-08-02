import "pig_latin"

-- word beginning with a
-- ==
-- input { "apple" }
-- output { "appleay" }

-- word beginning with e
-- ==
-- input { "ear" }
-- output { "earay" }

-- word beginning with i
-- ==
-- input { "igloo" }
-- output { "iglooay" }

-- word beginning with o
-- ==
-- input { "object" }
-- output { "objectay" }

-- word beginning with u
-- ==
-- input { "under" }
-- output { "underay" }

-- word beginning with a vowel and followed by a qu
-- ==
-- input { "equal" }
-- output { "equalay" }

-- word beginning with p
-- ==
-- input { "pig" }
-- output { "igpay" }

-- word beginning with k
-- ==
-- input { "koala" }
-- output { "oalakay" }

-- word beginning with x
-- ==
-- input { "xenon" }
-- output { "enonxay" }

-- word beginning with q without a following u
-- ==
-- input { "qat" }
-- output { "atqay" }

-- word beginning with consonant and vowel containing qu
-- ==
-- input { "liquid" }
-- output { "iquidlay" }

-- word beginning with ch
-- ==
-- input { "chair" }
-- output { "airchay" }

-- word beginning with qu
-- ==
-- input { "queen" }
-- output { "eenquay" }

-- word beginning with qu and a preceding consonant
-- ==
-- input { "square" }
-- output { "aresquay" }

-- word beginning with th
-- ==
-- input { "therapy" }
-- output { "erapythay" }

-- word beginning with thr
-- ==
-- input { "thrush" }
-- output { "ushthray" }

-- word beginning with sch
-- ==
-- input { "school" }
-- output { "oolschay" }

-- word beginning with yt
-- ==
-- input { "yttria" }
-- output { "yttriaay" }

-- word beginning with xr
-- ==
-- input { "xray" }
-- output { "xrayay" }

-- y is treated like a consonant at the beginning of a word
-- ==
-- input { "yellow" }
-- output { "ellowyay" }

-- y is treated like a vowel at the end of a consonant cluster
-- ==
-- input { "rhythm" }
-- output { "ythmrhay" }

-- y as second letter in two letter word
-- ==
-- input { "my" }
-- output { "ymay" }

-- a whole phrase
-- ==
-- input { "quick fast run" }
-- output { "ickquay astfay unray" }

def main (phrase: []u8): []u8 =
  translate phrase
