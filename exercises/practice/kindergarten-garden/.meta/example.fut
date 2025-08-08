type plant = #grass | #clover | #radishes | #violets

def decode (letter: u8): plant =
  match letter
    case 'G' -> #grass
    case 'C' -> #clover
    case 'R' -> #radishes
    case 'V' -> #violets
    case _ -> assert false #grass

def plants (diagram: []u8) (student: []u8): [4]plant =
  let first = 2 * i64.u8 (student[0] - 'A')
  let second = first + 1
  let third = (length diagram + 1) / 2 + first
  let fourth = third + 1
  in
    map1 (\index -> decode diagram[index]) [first, second, third, fourth]
