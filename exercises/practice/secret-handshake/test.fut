import "secret_handshake"

-- wink for 1
-- ==
-- input { 1 }
-- output { "wink" }

-- double blink for 10
-- ==
-- input { 2 }
-- output { "double blink" }

-- close your eyes for 100
-- ==
-- input { 4 }
-- output { "close your eyes" }

-- jump for 1000
-- ==
-- input { 8 }
-- output { "jump" }

-- combine two actions
-- ==
-- input { 3 }
-- output { "wink, double blink" }

-- reverse two actions
-- ==
-- input { 19 }
-- output { "double blink, wink" }

-- reversing one action gives the same action
-- ==
-- input { 24 }
-- output { "jump" }

-- reversing no actions still gives no actions
-- ==
-- input { 16 }
-- output { "" }

-- all possible actions
-- ==
-- input { 15 }
-- output { "wink, double blink, close your eyes, jump" }

-- reverse all possible actions
-- ==
-- input { 31 }
-- output { "jump, close your eyes, double blink, wink" }

-- do nothing for zero
-- ==
-- input { 0 }
-- output { "" }

let main (code: i32): []u8 =
  commands code
