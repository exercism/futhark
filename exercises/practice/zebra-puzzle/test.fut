import "zebra_puzzle"

-- resident who drinks water
-- ==
-- entry: test_drinks_water
-- input {}
-- output { "Norwegian" }

-- resident who owns zebra
-- ==
-- entry: test_owns_zebra
-- input {}
-- output { "Japanese" }

entry test_drinks_water: []u8 =
  drinks_water

entry test_owns_zebra: []u8 =
  owns_zebra
