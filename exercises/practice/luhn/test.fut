import "luhn"

-- single digit strings can not be valid
-- ==
-- input { "1" }
-- output { false }

-- a single zero is invalid
-- ==
-- input { "0" }
-- output { false }

-- a simple valid SIN that remains valid if reversed
-- ==
-- input { "059" }
-- output { true }

-- a simple valid SIN that becomes invalid if reversed
-- ==
-- input { "59" }
-- output { true }

-- a valid Canadian SIN
-- ==
-- input { "055 444 285" }
-- output { true }

-- invalid Canadian SIN
-- ==
-- input { "055 444 286" }
-- output { false }

-- invalid credit card
-- ==
-- input { "8273 1232 7352 0569" }
-- output { false }

-- invalid long number with an even remainder
-- ==
-- input { "1 2345 6789 1234 5678 9012" }
-- output { false }

-- invalid long number with a remainder divisible by 5
-- ==
-- input { "1 2345 6789 1234 5678 9013" }
-- output { false }

-- valid number with an even number of digits
-- ==
-- input { "095 245 88" }
-- output { true }

-- valid number with an odd number of spaces
-- ==
-- input { "234 567 891 234" }
-- output { true }

-- valid strings with a non-digit added at the end become invalid
-- ==
-- input { "059a" }
-- output { false }

-- valid strings with punctuation included become invalid
-- ==
-- input { "055-444-285" }
-- output { false }

-- valid strings with symbols included become invalid
-- ==
-- input { "055# 444$ 285" }
-- output { false }

-- single zero with space is invalid
-- ==
-- input { " 0" }
-- output { false }

-- more than a single zero is valid
-- ==
-- input { "0000 0" }
-- output { true }

-- input digit 9 is correctly converted to output digit 9
-- ==
-- input { "091" }
-- output { true }

-- very long input is valid
-- ==
-- input { "9999999999 9999999999 9999999999 9999999999" }
-- output { true }

-- valid luhn with an odd number of digits and non zero first digit
-- ==
-- input { "109" }
-- output { true }

-- using ascii value for non-doubled non-digit isn't allowed
-- ==
-- input { "055b 444 285" }
-- output { false }

-- using ascii value for doubled non-digit isn't allowed
-- ==
-- input { ":9" }
-- output { false }

-- non-numeric, non-space char in the middle with a sum that's divisible by 10 isn't allowed
-- ==
-- input { "59%59" }
-- output { false }

let main (value: []u8): bool =
  valid value
