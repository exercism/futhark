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
