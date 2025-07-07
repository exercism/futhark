def valid [n] (value: [n]u8): bool =
  let (count, total) = loop (count, total) = (0, 0) for i < n do
    let c = u64.u8 (value[n - i - 1] ^ '0')
    in
      if c == ' ' ^ '0' then (count, total) else
      if c > 9 then (-n, total) else
      if count % 2 == 0 then (count + 1, total + c) else
      if c < 5 then (count + 1, total + 2 * c) else
      (count + 1, total + 2 * c - 9)
  in
    (count >= 2) && (total % 10 == 0)
