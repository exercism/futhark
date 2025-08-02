def abbreviate (phrase: []u8): []u8 =
  let (result, _) = loop (result, letter) = ("", false) for ch in phrase do
    if ch == '\'' then (result, letter) else
    if (ch & 223) - 'A' >= 26 then (result, false) else
    if letter then (result, true) else
    (result ++ [ch & 223], true)
  in
    result
