import "reverse_string"

-- an empty string
-- ==
-- input { "" }
-- output { "" }

-- a word
-- ==
-- input { "robot" }
-- output { "tobor" }

-- a capitalized word
-- ==
-- input { "Ramen" }
-- output { "nemaR" }

-- a sentence with punctuation
-- ==
-- input { "I'm hungry!" }
-- output { "!yrgnuh m'I" }

-- a palindrome
-- ==
-- input { "racecar" }
-- output { "racecar" }

-- an even-sized word
-- ==
-- input { "drawer" }
-- output { "reward" }

let main (str: []u8): []u8 =
  reverse str
