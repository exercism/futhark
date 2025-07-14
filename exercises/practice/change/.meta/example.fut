def find_fewest_coins (coins: []i32) (target: i32): []i32 =
  let capacity = assert (target >= 0) (target + 1)
  let (table_coins, table_counts) = loop (table_coins, table_counts) = (replicate (i64.i32 capacity) 0, replicate (i64.i32 capacity) 0) for i in 1..<capacity do
    let (best_coin, best_count) = loop (best_coin, best_count) = (0, capacity) for coin in coins do
      if coin > i || table_counts[i - coin] + 1 >= best_count then (best_coin, best_count) else
      (coin, table_counts[i - coin] + 1)
    in
      (table_coins with [i] = best_coin, table_counts with [i] = best_count)
  in
    let (result, _, _) = loop (result, remaining, j) = assert (table_counts[target] < capacity) (replicate (i64.i32 table_counts[target]) 0, target, 0) while remaining > 0 do
      (result with [j] = table_coins[remaining], remaining - table_coins[remaining], j + 1)
    in
      result 
