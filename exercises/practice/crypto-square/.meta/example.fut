def normalize [n] (plaintext: [n]u8): []u8 =
  let (i, a) = loop (i, a) = (0, replicate n '\0') for c in plaintext do
    let number = c - '0'
    let letter = (c | 32) - 'a'
    in
      if number < 10 then (i + 1, a with [i] = c) else
      if letter < 26 then (i + 1, a with [i] = 'a' + letter) else
      (i, a)
  in
    a[0:i]

def rows (n: i64): i64 =
  let r = loop r = 0 while r * r < n do
    r + 1
  in
    r

def columns (n: i64) (r: i64): i64 =
  if (r - 1) * r >= n then r else
  r + 1

def encode [n] (plaintext: [n]u8): []u8 =
  if n == 0 then plaintext else
  let r = rows n
  let c = columns n r
  let a = loop a = replicate (c * r - 1) ' ' for i in 0..<n do
    let j = i / r
    let k = i % r
    in
      a with [k * c + j] = plaintext[i]
  in
    a

def ciphertext (plaintext: []u8): []u8 =
  plaintext
  |> normalize
  |> encode
