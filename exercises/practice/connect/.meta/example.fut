def root (parents: []i64) (i: i64): i64 =
  let i = loop i = i while parents[i] != i do
    parents[i]
  in
    i

def occupant [m] [n] (board: [m][n]u8) (row: i64) (column: i64): u8 =
  if row < m then board[row][row + 2 * column] else
  match column
    case 0 -> 'O'  -- top edge
    case 1 -> 'O'  -- bottom edge
    case 2 -> 'X'  -- left edge
    case 3 -> 'X'  -- right edge
    case _ -> assert false '.'

def adjacent [m] [n] (parents: *[]i64) (board: [m][n]u8) (row1: i64) (column1: i64) (row2: i64) (column2: i64): *[]i64 =
  if occupant board row1 column1 != occupant board row2 column2 then parents else
  let columns = (n + 2 - m) / 2
  let root1 = root parents (row1 * columns + column1)
  let root2 = root parents (row2 * columns + column2)
  in
    parents with [root2] = root1

def winner [m] [n] (board: [m][n]u8): u8 =
  if m == 0 || n == 0 then '.' else
  let rows = m
  let columns = (n + 2 - m) / 2
  let parents = loop parents = iota (rows * columns + 4) for j < columns do
    adjacent parents board 0 j rows 0  -- top edge
  in
    let parents = loop parents = parents for j < columns do
      adjacent parents board (rows - 1) j rows 1  -- bottom edge
    in
      let parents = loop parents = parents for i < rows do
        adjacent parents board i 0 rows 2  -- left edge
      in
        let parents = loop parents = parents for i < rows do
          adjacent parents board i (columns - 1) rows 3  -- right edge
        in
          let parents = loop parents = parents for i < rows do
            let parents = loop parents = parents for j < columns - 1 do
              adjacent parents board i j i (j + 1)  -- horizontal -
            in
              parents
          in
            let parents = loop parents = parents for i < rows - 1 do
              let parents = loop parents = parents for j < columns do
                adjacent parents board i j (i + 1) j  -- diagonal \
              in
                parents
            in
              let parents = loop parents = parents for i < rows - 1 do
                let parents = loop parents = parents for j < columns - 1 do
                  adjacent parents board i (j + 1) (i + 1) j  -- diagonal /
                in
                  parents
              in
                let roottop = root parents (rows * columns + 0)
                let rootbottom = root parents (rows * columns + 1)
                let rootleft = root parents (rows * columns + 2)
                let rootright = root parents (rows * columns + 3)
                in
                  if roottop == rootbottom then 'O' else
                  if rootleft == rootright then 'X' else
                  '.'
