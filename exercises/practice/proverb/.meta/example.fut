def recite (strings: []u8): []u8 =
  if length strings == 0 then [] else
  let offsets = loop offsets = [0] for i < length strings do
    if strings[i] != '\n' then offsets else
    offsets ++ [i + 1]
  in
    let n = length offsets - 2
    in
      let result = loop result = "" for i < n do
        result ++ "For want of a " ++ strings[offsets[i]:offsets[i + 1] - 1] ++ " the " ++ strings[offsets[i + 1]:offsets[i + 2] - 1] ++ " was lost.\n"
      in
        result ++ "And all for the want of a " ++ strings[offsets[0]:offsets[1] - 1] ++ ".\n"
