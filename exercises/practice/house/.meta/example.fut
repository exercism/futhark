
let lyrics = "\nThis is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."

let table = [-1, 389, 368, 351, 331, 310, 267, 232, 190, 145, 99, 62, 8]

def recite (start_verse: i32) (end_verse: i32): []u8 =
  let result = loop result = "" for verse in start_verse...end_verse do
    result ++ lyrics[0:8] ++ lyrics[i64.i32 table[verse]:]
  in
    result[1:]
