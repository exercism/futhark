import "wordy"

-- just a number
-- ==
-- input { "What is 5?" }
-- output { 5 }

-- just a zero
-- ==
-- input { "What is 0?" }
-- output { 0 }

-- just a negative number
-- ==
-- input { "What is -123?" }
-- output { -123 }

-- addition
-- ==
-- input { "What is 1 plus 1?" }
-- output { 2 }

-- addition with a left hand zero
-- ==
-- input { "What is 0 plus 2?" }
-- output { 2 }

-- addition with a right hand zero
-- ==
-- input { "What is 3 plus 0?" }
-- output { 3 }

-- more addition
-- ==
-- input { "What is 53 plus 2?" }
-- output { 55 }

-- addition with negative numbers
-- ==
-- input { "What is -1 plus -10?" }
-- output { -11 }

-- large addition
-- ==
-- input { "What is 123 plus 45678?" }
-- output { 45801 }

-- subtraction
-- ==
-- input { "What is 4 minus -12?" }
-- output { 16 }

-- multiplication
-- ==
-- input { "What is -3 multiplied by 25?" }
-- output { -75 }

-- division
-- ==
-- input { "What is 33 divided by -3?" }
-- output { -11 }

-- multiple additions
-- ==
-- input { "What is 1 plus 1 plus 1?" }
-- output { 3 }

-- addition and subtraction
-- ==
-- input { "What is 1 plus 5 minus -2?" }
-- output { 8 }

-- multiple subtraction
-- ==
-- input { "What is 20 minus 4 minus 13?" }
-- output { 3 }

-- subtraction then addition
-- ==
-- input { "What is 17 minus 6 plus 3?" }
-- output { 14 }

-- multiple multiplication
-- ==
-- input { "What is 2 multiplied by -2 multiplied by 3?" }
-- output { -12 }

-- addition and multiplication
-- ==
-- input { "What is -3 plus 7 multiplied by -2?" }
-- output { -8 }

-- multiple division
-- ==
-- input { "What is -12 divided by 2 divided by -3?" }
-- output { 2 }

-- unknown operation
-- ==
-- input { "What is 52 cubed?" }
-- error: Error*

-- Non math question
-- ==
-- input { "Who is the President of the United States?" }
-- error: Error*

-- reject problem missing an operand
-- ==
-- input { "What is 1 plus?" }
-- error: Error*

-- reject problem with no operands or operators
-- ==
-- input { "What is?" }
-- error: Error*

-- reject two operations in a row
-- ==
-- input { "What is 1 plus plus 2?" }
-- error: Error*

-- reject two numbers in a row
-- ==
-- input { "What is 1 plus 2 1?" }
-- error: Error*

-- reject postfix notation
-- ==
-- input { "What is 1 2 plus?" }
-- error: Error*

-- reject prefix notation
-- ==
-- input { "What is plus 1 2?" }
-- error: Error*

let main (question: []u8): i32 =
  answer question
