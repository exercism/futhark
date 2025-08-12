
def total (candidate: []i32): i32 =
  foldl (\x -> \y -> x + y) 0 candidate

def exclusion_set (exclude: []i32): i32 =
  foldl (\x -> \y -> x | (1 << y)) 0 exclude

def combinations (sum: i32) (size: i32) (exclude: []i32): [][]i32 =
  let exclusions = exclusion_set exclude
  let (result, _, _) = loop (result, candidate, depth) = ([], replicate (i64.i32 size) 0, 0) while depth >= 0 do
    let digit = candidate[depth] + 1
    in
      if digit > 9 then (result, candidate, depth - 1) else
      let candidate = candidate with [depth] = digit
      in
        if exclusions & (1 << digit) != 0 then (result, candidate, depth) else
        let next_depth = depth + 1
        in
          if next_depth == size then (if total candidate == sum then result ++ [candidate] else result, candidate, depth) else
          (result, candidate with [next_depth] = digit, next_depth)
  in
    result
