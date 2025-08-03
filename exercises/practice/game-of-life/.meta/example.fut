
def tick_cell [n] (matrix: [n][n]i32) (i: i64) (j: i64): i32 =
  let count = loop count = -matrix[i][j] for k in 0..<9 do
    let i2 = i + (k / 3) - 1
    let j2 = j + (k % 3) - 1
    in
      if i2 < 0 || i2 >= n || j2 < 0 || j2 >= n || matrix[i2][j2] != 1 then count else
      count + 1
  in
    -- if current cell is alive, treat 2 alive neighbours as 3
    if count | matrix[i][j] == 3 then 1 else
    0

def tick_row [n] (matrix: [n][n]i32) (i: i64): [n]i32 =
  tabulate n (tick_cell matrix i)

def tick [n] (matrix: [n][n]i32): [n][n]i32 =
  tabulate n (tick_row matrix)
