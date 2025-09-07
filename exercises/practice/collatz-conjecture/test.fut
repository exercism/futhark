import "collatz_conjecture"

-- zero steps for one
-- ==
-- input { 1 }
-- output { 0 }

-- divide if even
-- ==
-- input { 16 }
-- output { 4 }

-- even and odd steps
-- ==
-- input { 12 }
-- output { 9 }

-- large number of even and odd steps
-- ==
-- input { 1000000 }
-- output { 152 }

-- zero is an error
-- ==
-- input { 0 }
-- error: Error*

-- negative value is an error
-- ==
-- input { -15 }
-- error: Error*

let main (number: i32): i32 =
  steps number
