def slices (series: []u8) (sliceLength: i64): [][]u8 =
  let seriesLength = length series
  let n = seriesLength + 1 - sliceLength
  let slice = \i -> series[i:i + sliceLength] :> [sliceLength]u8
  in
    assert (1 <= n && n <= seriesLength) (tabulate n slice)
