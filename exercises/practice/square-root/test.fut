import "square_root"

-- root of 1
-- ==
-- input { 1 }
-- output { 1 }

-- root of 4
-- ==
-- input { 4 }
-- output { 2 }

-- root of 25
-- ==
-- input { 25 }
-- output { 5 }

-- root of 81
-- ==
-- input { 81 }
-- output { 9 }

-- root of 196
-- ==
-- input { 196 }
-- output { 14 }

-- root of 65025
-- ==
-- input { 65025 }
-- output { 255 }

let main (radicand: i32): i32 =
  square_root radicand
