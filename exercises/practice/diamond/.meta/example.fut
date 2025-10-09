
def row [n] (side: i64) (i: i64) (spaces: [n]u8): [n]u8 =
  let index = if i <= side then i else side + side - i
  let letter = u8.i64 (65 + index)
  in
    (copy spaces) with [side - index] = letter with [side + index] = letter

def rows (letter: u8): [][]u8 =
  let side = i64.u8 (letter - 'A')
  let size = side + side + 1
  let spaces = map (const ' ') (iota size)
  in
    map (\i -> row side i spaces) (iota size)
