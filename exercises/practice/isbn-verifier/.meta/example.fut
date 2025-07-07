def is_valid [n] (isbn: [n]u8): bool =
  let (weight, total) = loop (weight, total) = (10, 0) for i < n do
    let c = isbn[i]
    in
      if c == '-' then (weight, total) else
      if c >= '0' && c <= '9' then (weight - 1, total + weight * i64.u8 (c - '0')) else
      if c == 'X' && weight == 1 then (0, total + 10) else
      (n, 0) -- invalid
  in
    (weight == 0) && (total % 11 == 0)
