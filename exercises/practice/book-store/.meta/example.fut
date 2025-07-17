def tally (basket: []i32): []i32 =
  let array = loop array = replicate 6 0 for book in basket do
    array with [book] = array[book] + 1
  in
    array

def sort [n] (array: [n]i32): []i32 =
  let a = loop a = copy array for i in 1..<n do
    let ai = a[i]
    let (a2, j) = loop (a2, j) = (a, i) while j > 0 && a2[j - 1] > ai do
      (a2 with [j] = a2[j - 1], j - 1)
    in
      a2 with [j] = ai
  in
    a

def difference [n] (a: [n]i32): []i32 =
  let d = loop d = replicate 6 a[5] for i in 1..<6 do
    d with [6 - i] = a[i] - a[i - 1]
  in
    d

def adjust [n] (d: [n]i32): []i32 =
  let one = d[1]
  let two = d[2]
  let three = d[3]
  let four = d[4]
  let five = d[5]
  let adjustment = i32.min three five
  in
    [0, one, two, three - adjustment, four + 2 * adjustment, five - adjustment]

def price [n] (c: [n]i32): i32 =
  let one = c[1]
  let two = c[2]
  let three = c[3]
  let four = c[4]
  let five = c[5]
  in
    800 * one + 1520 * two + 2160 * three + 2560 * four + 3000 * five

def total (basket: []i32): i32 =
  basket
  |> tally
  |> sort
  |> difference
  |> adjust
  |> price
