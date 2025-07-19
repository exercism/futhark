def maximum_value [n] (weights: [n]i32) (values: [n]i32) (maximum_weight: i32): i32 =
  let a = loop a = replicate (i64.i32 maximum_weight + 1) 0 for i in 0..<n do
    let weight = weights[i]
    let value = values[i]
    in
      if weight > maximum_weight then a else
      let a2 = loop a2 = a for j in 0...(maximum_weight - weight) do
        let update = a2[j + weight] + value
        in
          if update <= a2[j] then a2 else
          a2 with [j] = update
      in
        a2
  in
    a[0]
