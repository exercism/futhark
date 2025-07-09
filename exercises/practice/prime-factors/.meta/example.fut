def factors (value: i32): []i32 =
  let (_, _, a, i) = loop (n, p, a, i) = (value, 2, replicate 32 0, 0) while n > 1 do
    if n % p != 0 then (n, p + 1, a, i) else
    (n / p, p, a with [i] = p, i + 1)
  in
    a[0:i]
