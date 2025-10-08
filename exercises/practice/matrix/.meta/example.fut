def select [n] (string: [n]u8) (required_row: i32) (required_column: i32): []i32 =
  let (a, count, _, _, _, _) = loop (a, count, current_row, current_column, i, number) = (replicate n 0, 0, 1, 1, 0, 0) while i < n do
    let ch = string[i]
    in
      if ch == ' ' then (a, count, current_row, current_column + 1, i + 1, 0)
      else if ch == '\n' then (a, count, current_row + 1, 1, i + 1, 0)
      else
        let number = 10 * number + i32.u8(ch - '0')
        in
          if i + 1 < n && string[i + 1] > ' ' then (a, count, current_row, current_column, i + 1, number)
          else if current_row != required_row && current_column != required_column then (a, count, current_row, current_column, i + 1, 0)
          else (a with [count] = number, count + 1, current_row, current_column, i + 1, 0)
  in
    a[0:count]

def row (string: []u8) (index: i32): []i32 =
  select string index 0

def column (string: []u8) (index: i32): []i32 =
  select string 0 index
