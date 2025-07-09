def normalize [n] (phrase: [n]u8): []u8 =
  let (i, a) = loop (i, a) = (0, replicate n '\0') for c in phrase do
    if c < '0' then (i, a) else
    assert (c <= '9') (i + 1, a with [i] = c)
  in
    a[0:i]

def check_country [n] (phrase: [n]u8): []u8 =
  if n == 11 && phrase[0] == '1' then phrase[1:] else
  assert (n == 10) phrase

def check_area [n] (phrase: [n]u8): []u8 =
  assert (phrase[0] >= '2') phrase

def check_exchange [n] (phrase: [n]u8): []u8 =
  assert (phrase[3] >= '2') phrase

def clean (phrase: []u8): []u8 =
  phrase
  |> normalize
  |> check_country
  |> check_area
  |> check_exchange
