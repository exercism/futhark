import "phone_number"

-- cleans the number
-- ==
-- input { "(223) 456-7890" }
-- output { "2234567890" }

-- cleans numbers with dots
-- ==
-- input { "223.456.7890" }
-- output { "2234567890" }

-- cleans numbers with multiple spaces
-- ==
-- input { "223 456   7890   " }
-- output { "2234567890" }

-- invalid when 9 digits
-- ==
-- input { "123456789" }
-- error: Error*

-- invalid when 11 digits does not start with a 1
-- ==
-- input { "22234567890" }
-- error: Error*

-- valid when 11 digits and starting with 1
-- ==
-- input { "12234567890" }
-- output { "2234567890" }

-- valid when 11 digits and starting with 1 even with punctuation
-- ==
-- input { "+1 (223) 456-7890" }
-- output { "2234567890" }

-- invalid when more than 11 digits
-- ==
-- input { "321234567890" }
-- error: Error*

-- invalid with letters
-- ==
-- input { "523-abc-7890" }
-- error: Error*

-- invalid with punctuations
-- ==
-- input { "523-@:!-7890" }
-- error: Error*

-- invalid if area code starts with 0
-- ==
-- input { "(023) 456-7890" }
-- error: Error*

-- invalid if area code starts with 1
-- ==
-- input { "(123) 456-7890" }
-- error: Error*

-- invalid if exchange code starts with 0
-- ==
-- input { "(223) 056-7890" }
-- error: Error*

-- invalid if exchange code starts with 1
-- ==
-- input { "(223) 156-7890" }
-- error: Error*

-- invalid if area code starts with 0 on valid 11-digit number
-- ==
-- input { "1 (023) 456-7890" }
-- error: Error*

-- invalid if area code starts with 1 on valid 11-digit number
-- ==
-- input { "1 (123) 456-7890" }
-- error: Error*

-- invalid if exchange code starts with 0 on valid 11-digit number
-- ==
-- input { "1 (223) 056-7890" }
-- error: Error*

-- invalid if exchange code starts with 1 on valid 11-digit number
-- ==
-- input { "1 (223) 156-7890" }
-- error: Error*

def main (phrase: []u8): []u8 =
  clean phrase
