def truncate (phrase: *[]u8): *[]u8 =
  let (index, count) = loop (index, count) = (0, 0) while index < (length phrase) && count < 6 do
    if (phrase[index] & 0xc0) == 0x80 then (index + 1, count) else (index + 1, count + 1)
  in
    if count == 6 then phrase[0:index - 1] else phrase
