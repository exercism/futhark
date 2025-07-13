
def annotate_square [m] [n] (garden: [m][n]u8) (i: i64) (j: i64): u8 =
  if garden[i][j] == '*' then '*' else
  let count = loop count = 0u8 for k in 0..<9 do
    let i2 = i + (k / 3) - 1
    let j2 = j + (k % 3) - 1
    in
      if i2 < 0 || i2 >= m || j2 < 0 || j2 >= n || garden[i2][j2] != '*' then count else
      count + 1
  in
    if count == 0 then ' ' else
    '0' + count

def annotate_row [m] [n] (garden: [m][n]u8) (i: i64): [n]u8 =
  let b = loop b = copy garden[i] for j in 0..<n do
    b with [j] = annotate_square garden i j
  in
    b

def annotate [m] [n] (garden: [m][n]u8): [m][n]u8 =
  let a = loop a = copy garden for i in 0..<m do
    a with [i] = annotate_row garden i
  in
    a
