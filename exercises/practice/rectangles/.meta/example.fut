local def is_vertical_line (strings: [][]u8) (bottom: i64) (top: i64) (left: i64): bool =
  let result = loop result = true for row in top...bottom do
    result && (strings[row][left] == '|' || strings[row][left] == '+')
  in
    result

def rectangles [m] [n] (strings: [m][n]u8): i32 =
  let result = loop result = 0 for bottom in 1..<m do
    let result = loop result = result for right in 1..<n do
      if strings[bottom][right] != '+' then result else
      let (result, _) = loop (result, top) = (result, bottom - 1) while top >= 0 do
        if strings[top][right] == '|' then (result, top - 1) else
        if strings[top][right] != '+' then (result, -1) else
        let (result, _) = loop (result, left) = (result, right - 1) while left >= 0 do
          if is_vertical_line strings bottom top left then (result + 1, left - 1) else
          if (strings[bottom][left] == '-' || strings[bottom][left] == '+') && (strings[top][left] == '-' || strings[top][left] == '+') then (result, left - 1) else
          (result, -1)
        in
          (result, top - 1)
      in
        result
    in
      result
  in
    result
