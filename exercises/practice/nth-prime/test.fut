import "nth_prime"

-- first prime
-- ==
-- input { 1 }
-- output { 2 }

-- second prime
-- ==
-- input { 2 }
-- output { 3 }

-- sixth prime
-- ==
-- input { 6 }
-- output { 13 }

-- seventh prime
-- ==
-- input { 7 }
-- output { 17 }

-- big prime
-- ==
-- input { 10001 }
-- output { 104743 }

-- very big prime
-- ==
-- input { 65537 }
-- output { 821647 }

-- there is no zeroth prime
-- ==
-- input { 0 }
-- error: Error*

let main (number: i32): i32 =
  prime number
