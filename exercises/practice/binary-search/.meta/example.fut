def find [n] (array: [n]i32) (value: i32): i32 =
  let (low, _) = loop (low, high) = (0, i32.i64 n) while low < high do
    let middle = (low + high) / 2
    in
      if array[middle] < value then (middle + 1, high)
      else (low, middle)
  in
    assert (low < i32.i64 n && array[low] == value) low
