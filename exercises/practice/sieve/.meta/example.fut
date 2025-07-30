def primes (limit: i32): []i32 =
  let capacity = 1 + i64.i32 limit
  let (result, _, _) = loop (result, table, p) = ([], replicate capacity false, 2) while p < capacity do
    if table[p] then (result, table, p + 1) else
    let (table, _) = loop (table, multiple) = (table, p * p) while multiple < capacity do
      (table with [multiple] = true, multiple + p)
    in
      (result ++ [i32.i64 p], table, p + 1)
  in
    result
