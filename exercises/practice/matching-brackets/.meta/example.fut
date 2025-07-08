def is_paired [n] (value: [n]u8): bool =
  let (i, a) = loop (i, a) = (0, replicate (2 * n) '\0') for c in value do
    if c == '[' then (i + 1, a with [i] = ']') else
    if c == '{' then (i + 1, a with [i] = '}') else
    if c == '(' then (i + 1, a with [i] = ')') else
    if c != ']' && c != '}' && c != ')' then (i, a) else
    if i > 0 && a[i - 1] == c then (i - 1, a) else
    (n, a) -- invalid
  in
    i == 0
