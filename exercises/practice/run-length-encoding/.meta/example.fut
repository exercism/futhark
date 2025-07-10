def encode [n] (string: [n]u8): []u8 =
  let (a, i, _) = loop (a, i, k) = (replicate n '\0', n, n) while k > 0 do
    let c = string[k - 1]
    let j = loop j = k - 1 while j > 0 && string[j - 1] == c do
      j - 1

    -- Run-length encode the run from `j` (inclusive) to `k` (exclusive) of the character c
    let a2 = a with [i - 1] = c
    let i2 = i - 1
    in
      if k - j == 1 then (a2, i2, j) else
      let (a3, i3, _) = loop (a3, i3, number) = (a2, i2, k - j) while number > 0 do
        (a3 with [i3 - 1] = '0' + u8.i64 (number % 10), i3 - 1, number / 10)
      in (a3, i3, j)
  in
    a[i:]

def decode_length (string: []u8): i64 =
  let (i, _) = loop (i, number) = (0, 0) for c in string do
    if c >= '0' && c <= '9' then (i, number * 10 + i64.u8 c - '0') else
    if number == 0 then (i + 1, 0) else
    (i + number, 0)
  in
    i

def decode [n] (string: [n]u8): []u8 =
  let (a, _, _) = loop (a, i, number) = (replicate (decode_length string) '\0', 0, 0) for c in string do
    if c >= '0' && c <= '9' then (a, i, number * 10 + i64.u8 c - '0') else
    if number == 0 then (a with [i] = c, i + 1, 0) else
    let (a2, i2, number2) = loop (a2, i2, number2) = (a, i, number) while number2 > 0 do
      (a2 with [i2] = c, i2 + 1, number2 - 1)
    in
      (a2, i2, number2)
  in
    a
