def saddle_points [m] [n] (matrix: [m][n]i32): [][2]i32 =
  let row_maximums = loop row_maximums = replicate m 0 for i < m do
    let greatest = loop greatest = i32.lowest for j < n do
      i32.max greatest matrix[i][j]
    in
      row_maximums with [i] = greatest
  in
    let column_minimums = loop column_minimums = replicate n 0 for j < n do
      let least = loop least = i32.highest for i < m do
        i32.min least matrix[i][j]
      in
        column_minimums with [j] = least
    in
      let result = loop result = [] for i < m do
        let result = loop result = result for j < n do
          if matrix[i][j] != row_maximums[i] || matrix[i][j] != column_minimums[j] then result else
          result ++ [[1 + i32.i64 i, 1 + i32.i64 j]]
        in
          result
      in
        result
