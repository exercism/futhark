import "prime_factors"

-- no factors
-- ==
-- input { 1 }
-- output { empty([0]i32) }

-- prime number
-- ==
-- input { 2 }
-- output { [2] }

-- another prime number
-- ==
-- input { 3 }
-- output { [3] }

-- square of a prime
-- ==
-- input { 9 }
-- output { [3, 3] }

-- product of first prime
-- ==
-- input { 4 }
-- output { [2, 2] }

-- cube of a prime
-- ==
-- input { 8 }
-- output { [2, 2, 2] }

-- product of second prime
-- ==
-- input { 27 }
-- output { [3, 3, 3] }

-- product of third prime
-- ==
-- input { 625 }
-- output { [5, 5, 5, 5] }

-- product of first and second prime
-- ==
-- input { 6 }
-- output { [2, 3] }

-- product of primes and non-primes
-- ==
-- input { 12 }
-- output { [2, 2, 3] }

-- product of primes
-- ==
-- input { 901255 }
-- output { [5, 17, 23, 461] }

let main (value: i32): []i32 =
  factors value
