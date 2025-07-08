def decode [n] (phrase: [n]u8): []u8 =
  let (i, a) = loop (i, a) = (0, replicate n '\0') for c in phrase do
    if c >= '0' && c <= '9' then (i + 1, a with [i] = c) else
    if c >= 'A' && c <= 'Z' then (i + 1, a with [i] = 'a' + 'Z' - c) else
    if c >= 'a' && c <= 'z' then (i + 1, a with [i] = 'a' + 'z' - c) else
    (i, a)
  in
    a[0:i]

def encode [n] (phrase: [n]u8): []u8 =
  let (i, a) = loop (i, a) = (0, replicate (n * 6 / 5) ' ') for c in (decode phrase) do
    if i % 6 == 5 then (i + 2, a with [i + 1] = c) else
    (i + 1, a with [i] = c)
  in
    a[0:i]
