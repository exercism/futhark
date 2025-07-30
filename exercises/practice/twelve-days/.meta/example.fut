
let ordinals = "firstsecondthirdfourthfifthsixthseventheighthninthtentheleventhtwelfth"

let ordinals_table = [-1, 0, 5, 11, 16, 22, 27, 32, 39, 45, 50, 55, 63, 70]

let gifts = "twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n"

let gifts_table = [-1, 235, 213, 194, 174, 157, 137, 113, 90, 69, 48, 26, 0]

def recite (start_verse: i32) (end_verse: i32): []u8 =
  let result = loop result = "" for verse in start_verse...end_verse do
    result ++ "On the " ++ ordinals[i64.i32 ordinals_table[verse]:i64.i32 ordinals_table[verse + 1]] ++ " day of Christmas my true love gave to me: " ++ gifts[i64.i32 gifts_table[verse]:]
  in
    result
