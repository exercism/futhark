let numbers = "noonetwothreefourfivesixseveneightnineten"

let number_offsets = map1 i64.i32 [0, 2, 5, 8, 13, 17, 21, 24, 29, 34, 38, 41]

def green (bottles: i64): *[]u8 =
  numbers[number_offsets[bottles]:number_offsets[1 + bottles]] ++ " green bottle" ++ (if bottles != 1 then "s" else "")

def capitalize(phrase: *[]u8): *[]u8 =
  phrase with [0] = phrase[0] & 223

let verse (bottles: i64): []u8 =
  let first = (capitalize (green bottles)) ++ " hanging on the wall,\n"
  let second = first
  let third = "And if one green bottle should accidentally fall,\n"
  let fourth = "There'll be " ++ (green (bottles - 1)) ++ " hanging on the wall.\n\n"
  in
    first ++ second ++ third ++ fourth

def recite (start_bottles: i32) (take_down: i32): []u8 =
  let result = loop result = "" for fallen < take_down do
    result ++ verse (i64.i32 (start_bottles - fallen))
  in
    result[:length result - 1]
