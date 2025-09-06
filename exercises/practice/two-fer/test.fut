import "two_fer"

-- no name given
-- ==
-- input { "" }
-- output { "One for you, one for me." }

-- a name given
-- ==
-- input { "Alice" }
-- output { "One for Alice, one for me." }

-- another name given
-- ==
-- input { "Bob" }
-- output { "One for Bob, one for me." }

let main (name: []u8): []u8 =
  two_fer name
