import "proverb"

-- zero pieces
-- ==
-- input { "" }
-- output { "" }

-- one piece
-- ==
-- input { "nail\n" }
-- output { "And all for the want of a nail.\n" }

-- two pieces
-- ==
-- input { "nail\nshoe\n" }
-- output { "For want of a nail the shoe was lost.\nAnd all for the want of a nail.\n" }

-- three pieces
-- ==
-- input { "nail\nshoe\nhorse\n" }
-- output { "For want of a nail the shoe was lost.\nFor want of a shoe the horse was lost.\nAnd all for the want of a nail.\n" }

-- full proverb
-- ==
-- input { "nail\nshoe\nhorse\nrider\nmessage\nbattle\nkingdom\n" }
-- output { "For want of a nail the shoe was lost.\nFor want of a shoe the horse was lost.\nFor want of a horse the rider was lost.\nFor want of a rider the message was lost.\nFor want of a message the battle was lost.\nFor want of a battle the kingdom was lost.\nAnd all for the want of a nail.\n" }

-- four pieces modernized
-- ==
-- input { "pin\ngun\nsoldier\nbattle\n" }
-- output { "For want of a pin the gun was lost.\nFor want of a gun the soldier was lost.\nFor want of a soldier the battle was lost.\nAnd all for the want of a pin.\n" }

let main (strings: []u8): []u8 =
  recite strings
