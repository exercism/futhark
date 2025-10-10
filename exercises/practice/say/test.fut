import "say"

-- zero
-- ==
-- input { 0i64 }
-- output { "zero" }

-- one
-- ==
-- input { 1i64 }
-- output { "one" }

-- fourteen
-- ==
-- input { 14i64 }
-- output { "fourteen" }

-- twenty
-- ==
-- input { 20i64 }
-- output { "twenty" }

-- twenty-two
-- ==
-- input { 22i64 }
-- output { "twenty-two" }

-- thirty
-- ==
-- input { 30i64 }
-- output { "thirty" }

-- ninety-nine
-- ==
-- input { 99i64 }
-- output { "ninety-nine" }

-- one hundred
-- ==
-- input { 100i64 }
-- output { "one hundred" }

-- one hundred twenty-three
-- ==
-- input { 123i64 }
-- output { "one hundred twenty-three" }

-- two hundred
-- ==
-- input { 200i64 }
-- output { "two hundred" }

-- nine hundred ninety-nine
-- ==
-- input { 999i64 }
-- output { "nine hundred ninety-nine" }

-- one thousand
-- ==
-- input { 1000i64 }
-- output { "one thousand" }

-- one thousand two hundred thirty-four
-- ==
-- input { 1234i64 }
-- output { "one thousand two hundred thirty-four" }

-- one million
-- ==
-- input { 1000000i64 }
-- output { "one million" }

-- one million two thousand three hundred forty-five
-- ==
-- input { 1002345i64 }
-- output { "one million two thousand three hundred forty-five" }

-- one billion
-- ==
-- input { 1000000000i64 }
-- output { "one billion" }

-- a big number
-- ==
-- input { 987654321123i64 }
-- output { "nine hundred eighty-seven billion six hundred fifty-four million three hundred twenty-one thousand one hundred twenty-three" }

-- numbers below zero are out of range
-- ==
-- input { -1i64 }
-- error: Error*

-- numbers above 999,999,999,999 are out of range
-- ==
-- input { 1000000000000i64 }
-- error: Error*

-- additional big number
-- ==
-- input { 19011016013i64 }
-- output { "nineteen billion eleven million sixteen thousand thirteen" }

-- different big number
-- ==
-- input { 812000070017i64 }
-- output { "eight hundred twelve billion seventy thousand seventeen" }

-- alternative big number
-- ==
-- input { 60010015018i64 }
-- output { "sixty billion ten million fifteen thousand eighteen" }

let main (number: i64): []u8 =
  say number
