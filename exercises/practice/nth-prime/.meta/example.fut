def prime (number: i32): i32 =
  if number < 3 then assert (number > 0) (number + 1) else
  let capacity = number * (32 - i32.clz number) -- number * ceil(log2(number + 1))
  let (_, _, p, _) = loop (a, remaining, p, step) = (replicate (i64.i32 capacity) false, number - 2, 1, 4) while (remaining > 0) do
    let p2 = p + step
    let step2 = 6 - step
    in
      if a[p2] then (a, remaining, p2, step2) else

      -- protect against integer overflow
      if p2 > 46340 then (a, remaining - 1, p2, step2) else 
      let (a2, _) = loop (a2, multiple) = (a, p2 * p2) while multiple < capacity do
        (a2 with [multiple] = true, multiple + 2 * p2)
      in
        (a2, remaining - 1, p2, step2)
  in
    p
