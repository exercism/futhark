def slices (series: []u8) (sliceLength: i64): [][]u8 =
  let seriesLength = length series
  let slice = \i -> series[i:i + sliceLength] :> [sliceLength]u8
  in
    assert (0 < sliceLength && sliceLength <= seriesLength) (tabulate (seriesLength + 1 - sliceLength) slice)
