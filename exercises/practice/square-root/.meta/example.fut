def square_root (radicand: i32): i32 =
  let (n) = loop (n) = (0) while n * n < radicand do
    (n + 1)
  in
    n
