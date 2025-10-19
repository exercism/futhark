type resistance = { value: [3]u8, unit: [8]u8 }

def equal [m] [n] (first: [m]u8) (second: [n]u8): bool =
  if m != n then false else
  let same = loop same = true for i < n do
    same && (first[i] == second[i])
  in
    same

def colorCode (color: []u8): i32 =
  if equal color "black" then 0 else
  if equal color "brown" then 1 else
  if equal color "red" then 2 else
  if equal color "orange" then 3 else
  if equal color "yellow" then 4 else
  if equal color "green" then 5 else
  if equal color "blue" then 6 else
  if equal color "violet" then 7 else
  if equal color "grey" then 8 else
  if equal color "white" then 9 else
  assert false 0

def label_value (first: u8) (second: u8) (remainder: i32): [3]u8 =
  if remainder == 0 then (
    if second == '0' then [ ' ', ' ', first ] else [ first, '.', second ]
  ) else if remainder == 1 then (
    if first == '0' then [ ' ', ' ', second ] else [ ' ', first, second ]
  ) else if remainder == 2 then (
    [ first, second, '0' ]
  ) else assert false "   "

def label_unit (quotient: i32): [8]u8 =
  if quotient == 0 then "ohms    " else
  if quotient == 1 then "kiloohms" else
  if quotient == 2 then "megaohms" else
  if quotient == 3 then "gigaohms" else
  assert false "        "

def label (first: []u8) (second: []u8) (third: []u8): resistance =
  let first = u8.i32 ((colorCode first) + '0')
  let second = u8.i32 ((colorCode second) + '0')
  let third = (colorCode third) + 1
  in
    { value = label_value first second (third % 3), unit = label_unit (third / 3) }
