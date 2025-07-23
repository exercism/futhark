
def root (parents: []i64) (i: i64): i64 =
  let i = loop i = i while parents[i] != i do
    parents[i]
  in
    i

def can_chain [n] (dominoes: [n][2]i32): bool =
  let (tally, parents) = loop (tally, parents) = (replicate 7 0, iota 7) for stone in dominoes do
    let left = i64.i32 stone[0]
    let right = i64.i32 stone[1]
    let tally = tally with [left] = tally[left] + 1
    let tally = tally with [right] = tally[right] + 1
    let left = root parents left
    let right = root parents right
    let parents = parents with [right] = left
    in
      (tally, parents)
  in
    let count = loop count = 0 for i < 7 do
      if tally[i] % 2 != 0 then 7 else
      if tally[i] == 0 then count else
      if parents[i] != i then count else
      count + 1
    in
      count < 2
