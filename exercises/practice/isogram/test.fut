import "isogram"

-- empty string
-- ==
-- input { "" }
-- output { true }

-- isogram with only lower case characters
-- ==
-- input { "isogram" }
-- output { true }

-- word with one duplicated character
-- ==
-- input { "eleven" }
-- output { false }

-- word with one duplicated character from the end of the alphabet
-- ==
-- input { "zzyzx" }
-- output { false }

-- longest reported english isogram
-- ==
-- input { "subdermatoglyphic" }
-- output { true }

-- word with duplicated character in mixed case
-- ==
-- input { "Alphabet" }
-- output { false }

-- word with duplicated character in mixed case, lowercase first
-- ==
-- input { "alphAbet" }
-- output { false }

-- hypothetical isogrammic word with hyphen
-- ==
-- input { "thumbscrew-japingly" }
-- output { true }

-- hypothetical word with duplicated character following hyphen
-- ==
-- input { "thumbscrew-jappingly" }
-- output { false }

-- isogram with duplicated hyphen
-- ==
-- input { "six-year-old" }
-- output { true }

-- made-up name that is an isogram
-- ==
-- input { "Emily Jung Schwartzkopf" }
-- output { true }

-- duplicated character in the middle
-- ==
-- input { "accentor" }
-- output { false }

-- same first and last characters
-- ==
-- input { "angola" }
-- output { false }

-- word with duplicated character and with two hyphens
-- ==
-- input { "up-to-date" }
-- output { false }

let main (phrase: []u8): bool =
  is_isogram phrase
