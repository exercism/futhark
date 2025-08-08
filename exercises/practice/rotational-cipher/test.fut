import "rotational_cipher"

-- rotate a by 0, same output as input
-- ==
-- input { 0 "a" }
-- output { "a" }

-- rotate a by 1
-- ==
-- input { 1 "a" }
-- output { "b" }

-- rotate a by 26, same output as input
-- ==
-- input { 26 "a" }
-- output { "a" }

-- rotate m by 13
-- ==
-- input { 13 "m" }
-- output { "z" }

-- rotate n by 13 with wrap around alphabet
-- ==
-- input { 13 "n" }
-- output { "a" }

-- rotate capital letters
-- ==
-- input { 5 "OMG" }
-- output { "TRL" }

-- rotate spaces
-- ==
-- input { 5 "O M G" }
-- output { "T R L" }

-- rotate numbers
-- ==
-- input { 4 "Testing 1 2 3 testing" }
-- output { "Xiwxmrk 1 2 3 xiwxmrk" }

-- rotate punctuation
-- ==
-- input { 21 "Let's eat, Grandma!" }
-- output { "Gzo'n zvo, Bmviyhv!" }

-- rotate all letters
-- ==
-- input { 13 "The quick brown fox jumps over the lazy dog." }
-- output { "Gur dhvpx oebja sbk whzcf bire gur ynml qbt." }

let main (shift_key: i32) (text: []u8): []u8 =
  rotate shift_key text
