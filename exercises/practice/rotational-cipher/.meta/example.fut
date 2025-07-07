def shift (shift_key: u8) (c: u8): u8 =
  if c >= 'A' && c <= 'Z' then (c - 'A' + shift_key) % 26 + 'A' else
  if c >= 'a' && c <= 'z' then (c - 'a' + shift_key) % 26 + 'a' else
  c

def rotate [n] (shift_key: i32) (text: [n]u8): [n]u8 =
  text
  |> map (shift (u8.i32 shift_key))
