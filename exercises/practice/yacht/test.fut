import "yacht"

-- Yacht
-- ==
-- input { [5, 5, 5, 5, 5] "yacht" }
-- output { 50 }

-- Not Yacht
-- ==
-- input { [1, 3, 3, 2, 5] "yacht" }
-- output { 0 }

-- Ones
-- ==
-- input { [1, 1, 1, 3, 5] "ones" }
-- output { 3 }

-- Ones, out of order
-- ==
-- input { [3, 1, 1, 5, 1] "ones" }
-- output { 3 }

-- No ones
-- ==
-- input { [4, 3, 6, 5, 5] "ones" }
-- output { 0 }

-- Twos
-- ==
-- input { [2, 3, 4, 5, 6] "twos" }
-- output { 2 }

-- Fours
-- ==
-- input { [1, 4, 1, 4, 1] "fours" }
-- output { 8 }

-- Yacht counted as threes
-- ==
-- input { [3, 3, 3, 3, 3] "threes" }
-- output { 15 }

-- Yacht of 3s counted as fives
-- ==
-- input { [3, 3, 3, 3, 3] "fives" }
-- output { 0 }

-- Fives
-- ==
-- input { [1, 5, 3, 5, 3] "fives" }
-- output { 10 }

-- Sixes
-- ==
-- input { [2, 3, 4, 5, 6] "sixes" }
-- output { 6 }

-- Full house two small, three big
-- ==
-- input { [2, 2, 4, 4, 4] "full house" }
-- output { 16 }

-- Full house three small, two big
-- ==
-- input { [5, 3, 3, 5, 3] "full house" }
-- output { 19 }

-- Two pair is not a full house
-- ==
-- input { [2, 2, 4, 4, 5] "full house" }
-- output { 0 }

-- Four of a kind is not a full house
-- ==
-- input { [1, 4, 4, 4, 4] "full house" }
-- output { 0 }

-- Yacht is not a full house
-- ==
-- input { [2, 2, 2, 2, 2] "full house" }
-- output { 0 }

-- Four of a Kind
-- ==
-- input { [6, 6, 4, 6, 6] "four of a kind" }
-- output { 24 }

-- Yacht can be scored as Four of a Kind
-- ==
-- input { [3, 3, 3, 3, 3] "four of a kind" }
-- output { 12 }

-- Full house is not Four of a Kind
-- ==
-- input { [3, 3, 3, 5, 5] "four of a kind" }
-- output { 0 }

-- Little Straight
-- ==
-- input { [3, 5, 4, 1, 2] "little straight" }
-- output { 30 }

-- Little Straight as Big Straight
-- ==
-- input { [1, 2, 3, 4, 5] "big straight" }
-- output { 0 }

-- Four in order but not a little straight
-- ==
-- input { [1, 1, 2, 3, 4] "little straight" }
-- output { 0 }

-- No pairs but not a little straight
-- ==
-- input { [1, 2, 3, 4, 6] "little straight" }
-- output { 0 }

-- Minimum is 1, maximum is 5, but not a little straight
-- ==
-- input { [1, 1, 3, 4, 5] "little straight" }
-- output { 0 }

-- Big Straight
-- ==
-- input { [4, 6, 2, 5, 3] "big straight" }
-- output { 30 }

-- Big Straight as little straight
-- ==
-- input { [6, 5, 4, 3, 2] "little straight" }
-- output { 0 }

-- No pairs but not a big straight
-- ==
-- input { [6, 5, 4, 3, 1] "big straight" }
-- output { 0 }

-- Choice
-- ==
-- input { [3, 3, 5, 6, 6] "choice" }
-- output { 23 }

-- Yacht as choice
-- ==
-- input { [2, 2, 2, 2, 2] "choice" }
-- output { 10 }

def main (dice: [5]i32) (category: []u8): i32 =
  score dice category
