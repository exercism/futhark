def chunk [n] (phrase: [n]u8): []u8 =
  let (i, a) = loop (i, a) = (0, replicate (n * 6 / 5) ' ') for c in phrase do
    if i % 6 == 5 then (i + 2, a with [i + 1] = c) else
    (i + 1, a with [i] = c)
  in
    a[0:i]

def process [n] (f: u8 -> u8) (phrase: [n]u8): []u8 =
  let (i, a) = loop (i, a) = (0, replicate n '\0') for c in phrase do
    let number = c - '0'
    let letter = (c | 32) - 'a'
    in
      if number < 10 then (i + 1, a with [i] = c) else
      if letter < 26 then (i + 1, a with [i] = 'a' + f letter) else
      (i, a)
  in
    a[0:i]

let inverses = [0, 1, 0, 9, 0, 21, 0, 15, 0, 3, 0, 19, 0, 0, 0, 7, 0, 23, 0, 11, 0, 5, 0, 17, 0, 25]

def encrypt (a: i32) (b: i32) (letter: u8): u8 =
  u8.i32 ((a * (i32.u8 letter) + b) % 26)

def encode [n] (a: i32) (b: i32) (phrase: [n]u8): []u8 =
  assert (inverses[a] != 0) (chunk (process (encrypt a b) phrase))

def decode [n] (a: i32) (b: i32) (phrase: [n]u8): []u8 =
  let inverse = inverses[a]
  in
    assert (inverse != 0) (process (encrypt inverse ((26 - inverse) * b)) phrase)
