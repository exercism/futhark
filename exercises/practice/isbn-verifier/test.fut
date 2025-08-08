import "isbn_verifier"

-- valid isbn
-- ==
-- input { "3-598-21508-8" }
-- output { true }

-- invalid isbn check digit
-- ==
-- input { "3-598-21508-9" }
-- output { false }

-- valid isbn with a check digit of 10
-- ==
-- input { "3-598-21507-X" }
-- output { true }

-- check digit is a character other than X
-- ==
-- input { "3-598-21507-A" }
-- output { false }

-- invalid check digit in isbn is not treated as zero
-- ==
-- input { "4-598-21507-B" }
-- output { false }

-- invalid character in isbn is not treated as zero
-- ==
-- input { "3-598-P1581-X" }
-- output { false }

-- X is only valid as a check digit
-- ==
-- input { "3-598-2X507-9" }
-- output { false }

-- valid isbn without separating dashes
-- ==
-- input { "3598215088" }
-- output { true }

-- isbn without separating dashes and X as check digit
-- ==
-- input { "359821507X" }
-- output { true }

-- isbn without check digit and dashes
-- ==
-- input { "359821507" }
-- output { false }

-- too long isbn and no dashes
-- ==
-- input { "3598215078X" }
-- output { false }

-- too short isbn
-- ==
-- input { "00" }
-- output { false }

-- isbn without check digit
-- ==
-- input { "3-598-21507" }
-- output { false }

-- check digit of X should not be used for 0
-- ==
-- input { "3-598-21515-X" }
-- output { false }

-- empty isbn
-- ==
-- input { "" }
-- output { false }

-- input is 9 characters
-- ==
-- input { "134456729" }
-- output { false }

-- invalid characters are not ignored after checking length
-- ==
-- input { "3132P34035" }
-- output { false }

-- invalid characters are not ignored before checking length
-- ==
-- input { "3598P215088" }
-- output { false }

-- input is too long but contains a valid isbn
-- ==
-- input { "98245726788" }
-- output { false }

let main (isbn: []u8): bool =
  is_valid isbn
