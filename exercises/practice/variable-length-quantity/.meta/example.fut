def encode [n] (integers: [n]u32): []i32 =
  let capacity = n * 5
  let (a, i) = loop (a, i) = (replicate capacity 0i32, capacity) for integer in reverse integers do
    let (a2, i2, _) = loop (a2, i2, current) = (a with [i - 1] = 0x7f & i32.u32 integer, i - 1, integer >> 7) while current != 0 do
      (a2 with [i2 - 1] = 0x80 | (0x7f & i32.u32 current), i2 - 1, current >> 7)
    in
      (a2, i2)
  in
    a[i:]

def decode [n] (integers: [n]i32): []u32 =
  let (a, i, _, complete) = loop (a, i, current, _) = (replicate n 0u32, 0, 0u32, true) for integer in integers do
    let current2 = current | (0x7f & u32.i32 integer)
    in
      if (integer & 0x80) != 0 then (a, i, current2 << 7, false) else
      (a with [i] = current2, i + 1, 0u32, true)
  in
    assert (complete) a[0:i]
