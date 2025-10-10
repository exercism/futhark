import "micro_blog"

-- English language short
-- ==
-- input { "Hi" }
-- output { "Hi" }

-- English language long
-- ==
-- input { "Hello there" }
-- output { "Hello" }

-- German language short (broth)
-- ==
-- input { "brühe" }
-- output { "brühe" }

-- German language long (bear carpet → beards)
-- ==
-- input { "Bärteppich" }
-- output { "Bärte" }

-- Bulgarian language short (good)
-- ==
-- input { "Добър" }
-- output { "Добър" }

-- Greek language short (health)
-- ==
-- input { "υγειά" }
-- output { "υγειά" }

-- Maths short
-- ==
-- input { "a=πr²" }
-- output { "a=πr²" }

-- Maths long
-- ==
-- input { "∅⊊ℕ⊊ℤ⊊ℚ⊊ℝ⊊ℂ" }
-- output { "∅⊊ℕ⊊ℤ" }

-- English and emoji short
-- ==
-- input { "Fly 🛫" }
-- output { "Fly 🛫" }

-- Emoji short
-- ==
-- input { "💇" }
-- output { "💇" }

-- Emoji long
-- ==
-- input { "❄🌡🤧🤒🏥🕰😀" }
-- output { "❄🌡🤧🤒🏥" }

-- Royal Flush?
-- ==
-- input { "🃎🂸🃅🃋🃍🃁🃊" }
-- output { "🃎🂸🃅🃋🃍" }

let main (phrase: []u8): []u8 =
  truncate phrase
