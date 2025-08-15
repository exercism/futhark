def transpose [m] [n] (lines: [m][n]u8): [n][m]u8 =
  tabulate n (\j -> tabulate m (\i -> lines[i][j]))
