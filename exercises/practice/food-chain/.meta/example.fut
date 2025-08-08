def animals = "flyspiderbirdcatdoggoatcowhorse"

def animal_offsets = map1 i64.i32 [0, 0, 3, 9, 13, 16, 19, 23, 26, 31, 31]

def exclamations = "I don't know why she swallowed the fly. Perhaps she'll die.\nIt wriggled and jiggled and tickled inside her.\nHow absurd to swallow a bird!\nImagine that, to swallow a cat!\nWhat a hog, to swallow a dog!\nJust opened her throat and swallowed a goat!\nI don't know how she swallowed a cow!\nShe's dead, of course!\n"

def exclamation_offsets = map1 i64.i32 [0, 0, 60, 108, 138, 170, 200, 245, 283, 306]

def animal (verse: i64): []u8 =
  copy animals[animal_offsets[verse]:animal_offsets[verse + 1]]

def exclamation (verse: i64): []u8 =
  copy exclamations[exclamation_offsets[verse]:exclamation_offsets[verse + 1]]

def explanation (verse: i64): []u8 =
  let result = loop result = "" for index in verse..(verse - 1)..>1 do
    result ++ "She swallowed the " ++ (animal index) ++ " to catch the " ++ (animal (index - 1)) ++ (if index == 3 then " that wriggled and jiggled and tickled inside her" else "") ++ ".\n"
  in
    result ++ (exclamation 1)

def stanza (verse: i64): []u8 =
  "\nI know an old lady who swallowed a " ++ (animal verse) ++ ".\n" ++ (exclamation verse) ++ (if verse == 1 || verse == 8 then "" else explanation verse)

def recite (start_verse: i32) (end_verse: i32): []u8 =
  let result = loop result = "" for verse in start_verse...end_verse do
    result ++ stanza (i64.i32 verse)
  in
    result[1:]
