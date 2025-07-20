let triplets_with_sum (n: i32): [][3]i32 =
  let (_, _, result) = loop (a, b, result) = (0, n / 2, []) while a < b do
    let a2 = a + 1
    let numerator = n * (n - 2 * a2)
    let denominator = 2 * (n - a2)
    let b2 = numerator / denominator
    in
      if a2 >= b2 || numerator % denominator != 0 then (a2, b2, result) else
      (a2, b2, result ++ [[a2, b2, n - a2 - b2]])
  in
    result
