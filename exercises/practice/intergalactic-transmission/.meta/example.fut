def parity (data: u8): u8 =
  let (bit, _) = loop (bit, byte) = (0, data) while byte != 0 do
    (1 - bit, byte ^ (byte & -byte))
  in
    bit

def encode (data: u32): u8 =
  u8.u32 (data << 1) | (parity (u8.u32 (data & 0x7f)))

def transmit_sequence [n] (message: [n]u8): []u8 =
  let (a, i, data, count) = loop (a, i, data, count) = (replicate ((n * 8 + 6) / 7) '\0', 0, 0, 0u32) for byte in message do
    let data2 = (data << 8) | (u32.u8 byte)
    let count2 = count + 1
    let a2 = a with [i] = encode (data2 >> count2)
    let i2 = i + 1
    in
      if count2 < 7 then (a2, i2, data2, count2) else
      (a2 with [i2] = encode (data2 >> (count2 - 7)), i2 + 1, data2, count2 - 7)
  in
    if count == 0 then a[0:i] else
    (a with [i] = encode (data << (7 - count)))[0:i + 1]

def decode_message [n] (message: [n]u8): []u8 =
  let (a, _, _, _) = loop (a, i, data, count) = (replicate (n * 7 / 8) '\0', 0, 0, 0u32) for byte in message do
    let data2 = assert (parity byte == 0) ((data << 7) | ((u32.u8 byte) >> 1))
    let count2 = count + 7
    in
      if count2 < 8 then (a, i, data2, count2) else
      (a with [i] = u8.u32 (data2 >> (count2 - 8)), i + 1, data2, count2 - 8)
  in
    a
