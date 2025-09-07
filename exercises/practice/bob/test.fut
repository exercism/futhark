import "bob"

-- stating something
-- ==
-- input { "Tom-ay-to, tom-aaaah-to." }
-- output { "Whatever." }

-- shouting
-- ==
-- input { "WATCH OUT!" }
-- output { "Whoa, chill out!" }

-- shouting gibberish
-- ==
-- input { "FCECDFCAAB" }
-- output { "Whoa, chill out!" }

-- asking a question
-- ==
-- input { "Does this cryogenic chamber make me look fat?" }
-- output { "Sure." }

-- asking a numeric question
-- ==
-- input { "You are, what, like 15?" }
-- output { "Sure." }

-- asking gibberish
-- ==
-- input { "fffbbcbeab?" }
-- output { "Sure." }

-- talking forcefully
-- ==
-- input { "Hi there!" }
-- output { "Whatever." }

-- using acronyms in regular speech
-- ==
-- input { "It's OK if you don't want to go work for NASA." }
-- output { "Whatever." }

-- forceful question
-- ==
-- input { "WHAT'S GOING ON?" }
-- output { "Calm down, I know what I'm doing!" }

-- shouting numbers
-- ==
-- input { "1, 2, 3 GO!" }
-- output { "Whoa, chill out!" }

-- no letters
-- ==
-- input { "1, 2, 3" }
-- output { "Whatever." }

-- question with no letters
-- ==
-- input { "4?" }
-- output { "Sure." }

-- shouting with special characters
-- ==
-- input { "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!" }
-- output { "Whoa, chill out!" }

-- shouting with no exclamation mark
-- ==
-- input { "I HATE THE DENTIST" }
-- output { "Whoa, chill out!" }

-- statement containing question mark
-- ==
-- input { "Ending with ? means a question." }
-- output { "Whatever." }

-- non-letters with question
-- ==
-- input { ":) ?" }
-- output { "Sure." }

-- prattling on
-- ==
-- input { "Wait! Hang on. Are you going to be OK?" }
-- output { "Sure." }

-- silence
-- ==
-- input { "" }
-- output { "Fine. Be that way!" }

-- prolonged silence
-- ==
-- input { "          " }
-- output { "Fine. Be that way!" }

-- alternate silence
-- ==
-- input { "\t\t\t\t\t\t\t\t\t\t" }
-- output { "Fine. Be that way!" }

-- multiple line question
-- ==
-- input { "\nDoes this cryogenic chamber make\n me look fat?" }
-- output { "Sure." }

-- starting with whitespace
-- ==
-- input { "         hmmmmmmm..." }
-- output { "Whatever." }

-- ending with whitespace
-- ==
-- input { "Okay if like my  spacebar  quite a bit?   " }
-- output { "Sure." }

-- other whitespace
-- ==
-- input { "\n\r \t" }
-- output { "Fine. Be that way!" }

-- non-question ending with whitespace
-- ==
-- input { "This is a statement ending with whitespace      " }
-- output { "Whatever." }

let main (input: []u8): []u8 =
  response input
