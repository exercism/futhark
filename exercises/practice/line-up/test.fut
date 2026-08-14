import "line_up"

-- format smallest non-exceptional ordinal numeral 4
-- ==
-- input { "Gianna" 4 }
-- output { "Gianna, you are the 4th customer we serve today. Thank you!" }

-- format greatest single digit non-exceptional ordinal numeral 9
-- ==
-- input { "Maarten" 9 }
-- output { "Maarten, you are the 9th customer we serve today. Thank you!" }

-- format non-exceptional ordinal numeral 5
-- ==
-- input { "Petronila" 5 }
-- output { "Petronila, you are the 5th customer we serve today. Thank you!" }

-- format non-exceptional ordinal numeral 6
-- ==
-- input { "Attakullakulla" 6 }
-- output { "Attakullakulla, you are the 6th customer we serve today. Thank you!" }

-- format non-exceptional ordinal numeral 7
-- ==
-- input { "Kate" 7 }
-- output { "Kate, you are the 7th customer we serve today. Thank you!" }

-- format non-exceptional ordinal numeral 8
-- ==
-- input { "Maximiliano" 8 }
-- output { "Maximiliano, you are the 8th customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 1
-- ==
-- input { "Mary" 1 }
-- output { "Mary, you are the 1st customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 2
-- ==
-- input { "Haruto" 2 }
-- output { "Haruto, you are the 2nd customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 3
-- ==
-- input { "Henriette" 3 }
-- output { "Henriette, you are the 3rd customer we serve today. Thank you!" }

-- format smallest two digit non-exceptional ordinal numeral 10
-- ==
-- input { "Alvarez" 10 }
-- output { "Alvarez, you are the 10th customer we serve today. Thank you!" }

-- format non-exceptional ordinal numeral 11
-- ==
-- input { "Jacqueline" 11 }
-- output { "Jacqueline, you are the 11th customer we serve today. Thank you!" }

-- format non-exceptional ordinal numeral 12
-- ==
-- input { "Juan" 12 }
-- output { "Juan, you are the 12th customer we serve today. Thank you!" }

-- format non-exceptional ordinal numeral 13
-- ==
-- input { "Patricia" 13 }
-- output { "Patricia, you are the 13th customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 21
-- ==
-- input { "Washi" 21 }
-- output { "Washi, you are the 21st customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 22 ending in nd even though it is a multiple of 11
-- ==
-- input { "Ingrid" 22 }
-- output { "Ingrid, you are the 22nd customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 33 ending in rd even though it is a multiple of 11
-- ==
-- input { "Mario" 33 }
-- output { "Mario, you are the 33rd customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 52 ending in nd even though it is a multiple of 13
-- ==
-- input { "Quentin" 52 }
-- output { "Quentin, you are the 52nd customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 62
-- ==
-- input { "Nayra" 62 }
-- output { "Nayra, you are the 62nd customer we serve today. Thank you!" }

-- format non-exceptional ordinal numeral 72 ending in nd even though it is a multiple of 12
-- ==
-- input { "Ugo" 72 }
-- output { "Ugo, you are the 72nd customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 91 ending in st even though it is a multiple of 13
-- ==
-- input { "Boris" 91 }
-- output { "Boris, you are the 91st customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 100
-- ==
-- input { "John" 100 }
-- output { "John, you are the 100th customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 101
-- ==
-- input { "Zeinab" 101 }
-- output { "Zeinab, you are the 101st customer we serve today. Thank you!" }

-- format non-exceptional ordinal numeral 112
-- ==
-- input { "Knud" 112 }
-- output { "Knud, you are the 112th customer we serve today. Thank you!" }

-- format exceptional ordinal numeral 123
-- ==
-- input { "Yma" 123 }
-- output { "Yma, you are the 123rd customer we serve today. Thank you!" }

-- format large number 972 ending in nd even though it is a multiple of 12
-- ==
-- input { "Elias" 972 }
-- output { "Elias, you are the 972nd customer we serve today. Thank you!" }

let main (name: []u8) (number: i32): []u8 =
  format name number
