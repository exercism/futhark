import "crypto_square"

-- empty plaintext results in an empty ciphertext
-- ==
-- input { "" }
-- output { "" }

-- normalization results in empty plaintext
-- ==
-- input { "... --- ..." }
-- output { "" }

-- Lowercase
-- ==
-- input { "A" }
-- output { "a" }

-- Remove spaces
-- ==
-- input { "  b " }
-- output { "b" }

-- Remove punctuation
-- ==
-- input { "@1,%!" }
-- output { "1" }

-- 9 character plaintext results in 3 chunks of 3 characters
-- ==
-- input { "This is fun!" }
-- output { "tsf hiu isn" }

-- 8 character plaintext results in 3 chunks, the last one with a trailing space
-- ==
-- input { "Chill out." }
-- output { "clu hlt io " }

-- 54 character plaintext results in 8 chunks, the last two with trailing spaces
-- ==
-- input { "If man was meant to stay on the ground, god would have given us roots." }
-- output { "imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn  sseoau " }

def main (plaintext: []u8): []u8 =
  ciphertext plaintext
