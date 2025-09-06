import "pangram"

-- empty sentence
-- ==
-- input { "" }
-- output { false }

-- perfect lower case
-- ==
-- input { "abcdefghijklmnopqrstuvwxyz" }
-- output { true }

-- only lower case
-- ==
-- input { "the quick brown fox jumps over the lazy dog" }
-- output { true }

-- missing the letter 'x'
-- ==
-- input { "a quick movement of the enemy will jeopardize five gunboats" }
-- output { false }

-- missing the letter 'h'
-- ==
-- input { "five boxing wizards jump quickly at it" }
-- output { false }

-- with underscores
-- ==
-- input { "the_quick_brown_fox_jumps_over_the_lazy_dog" }
-- output { true }

-- with numbers
-- ==
-- input { "the 1 quick brown fox jumps over the 2 lazy dogs" }
-- output { true }

-- missing letters replaced by numbers
-- ==
-- input { "7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog" }
-- output { false }

-- mixed case and punctuation
-- ==
-- input { "\"Five quacking Zephyrs jolt my wax bed.\"" }
-- output { true }

-- a-m and A-M are 26 different characters but not a pangram
-- ==
-- input { "abcdefghijklm ABCDEFGHIJKLM" }
-- output { false }

let main (sentence: []u8): bool =
  is_pangram sentence
