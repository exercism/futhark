
def line (size: i32) (side: i32) (start: i32) (i: i32) (j: i32) (di: i32) (dj: i32) (a: *[]i32): *[]i32 =
  let (a, _, _) = loop (a, i, j) = (a, i, j) for index in 0..<(i64.i32 side) do
    (a with [i * size + j] = start + (i32.i64 index), i + di, j + dj)
  in
    a

def square (size: i32) (side: i32) (start: i32) (i: i32) (j: i32) (a: *[]i32): *[]i32 =
  let first = line size side start i j 0 1 a
  let second = line size side (start + side) i (j + side) 1 0 first
  let third = line size side (start + 2 * side) (i + side) (j + side) 0 (-1) second
  let fourth = line size side (start + 3 * side) (i + side) j (-1) 0 third
  in
    fourth

def spiral_matrix (size: i32): [][]i32 =
  let (a, _, _) = loop (a, index, start) = (replicate (i64.i32 (size * size)) (size * size), 0, 1) while size > 2 * index + 1 do
    (square size (size - (2 * index + 1)) start index index a, index + 1, (start + 4 * (size - (2 * index + 1))))
  in
    tabulate_2d (i64.i32 size) (i64.i32 size) (\i -> \j -> a[i * (i64.i32 size) + j])
