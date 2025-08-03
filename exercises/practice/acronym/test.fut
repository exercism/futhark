import "acronym"

-- basic
-- ==
-- input { "Portable Network Graphics" }
-- output { "PNG" }

-- lowercase words
-- ==
-- input { "Ruby on Rails" }
-- output { "ROR" }

-- punctuation
-- ==
-- input { "First In, First Out" }
-- output { "FIFO" }

-- all caps word
-- ==
-- input { "GNU Image Manipulation Program" }
-- output { "GIMP" }

-- punctuation without whitespace
-- ==
-- input { "Complementary metal-oxide semiconductor" }
-- output { "CMOS" }

-- very long abbreviation
-- ==
-- input { "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me" }
-- output { "ROTFLSHTMDCOALM" }

-- consecutive delimiters
-- ==
-- input { "Something - I made up from thin air" }
-- output { "SIMUFTA" }

-- apostrophes
-- ==
-- input { "Halley's Comet" }
-- output { "HC" }

-- underscore emphasis
-- ==
-- input { "The Road _Not_ Taken" }
-- output { "TRNT" }

def main (phrase: []u8): []u8 =
  abbreviate phrase
