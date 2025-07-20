def rail_lengths (rails: i64) (n: i64): [rails]i64 =
  let (lengths, _, _) = loop (lengths, rail, direction) = (replicate rails 0, 0, 1) for _ in 0..<n do
    let rail2 = rail + direction
    let direction2 = if rail2 > 0 && rail2 + 1 < rails then direction else -direction
    in
      (lengths with [rail] = lengths[rail] + 1, rail2, direction2)
  in
    lengths

def rail_offsets (rails: i64) (n: i64): [rails]i64 =
  let lengths = rail_lengths rails n
  let (offsets, _) = loop (offsets, acc) = (replicate rails 0, 0) for rail in 0..<rails do
    (offsets with [rail] = acc, acc + lengths[rail])
  in
    offsets

def process [n] (msg: [n]u8) (rails: i64) (is_decode: bool): [n]u8 =
  let (result, _, _, _) = loop (result, offsets, rail, direction) = (replicate n 0u8, rail_offsets rails n, 0, 1) for i in 0..<n do
    let rail2 = rail + direction
    let direction2 = if rail2 > 0 && rail2 + 1 < rails then direction else -direction
    let offset = offsets[rail]
    let offsets2 = offsets with [rail] = offset + 1
    let result2 = if is_decode then result with [i] = msg[offset] else result with [offset] = msg[i]
    in
      (result2, offsets2, rail2, direction2)
  in
    result

def encode (msg: []u8) (rails: i64): []u8 =
  process msg rails false

def decode (msg: []u8) (rails: i64): []u8 =
  process msg rails true
