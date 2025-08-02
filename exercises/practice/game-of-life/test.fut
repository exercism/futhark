import "game_of_life"

-- empty matrix
-- ==
-- input  { empty([0][0]i32) }
-- output { empty([0][0]i32) }

-- live cells with zero live neighbors die
-- ==
-- input  { [[0, 0, 0], [0, 1, 0], [0, 0, 0]] }
-- output { [[0, 0, 0], [0, 0, 0], [0, 0, 0]] }

-- live cells with only one live neighbor die
-- ==
-- input  { [[0, 0, 0], [0, 1, 0], [0, 1, 0]] }
-- output { [[0, 0, 0], [0, 0, 0], [0, 0, 0]] }

-- live cells with two live neighbors stay alive
-- ==
-- input  { [[1, 0, 1], [1, 0, 1], [1, 0, 1]] }
-- output { [[0, 0, 0], [1, 0, 1], [0, 0, 0]] }

-- live cells with three live neighbors stay alive
-- ==
-- input  { [[0, 1, 0], [1, 0, 0], [1, 1, 0]] }
-- output { [[0, 0, 0], [1, 0, 0], [1, 1, 0]] }

-- dead cells with three live neighbors become alive
-- ==
-- input  { [[1, 1, 0], [0, 0, 0], [1, 0, 0]] }
-- output { [[0, 0, 0], [1, 1, 0], [0, 0, 0]] }

-- live cells with four or more neighbors die
-- ==
-- input  { [[1, 1, 1], [1, 1, 1], [1, 1, 1]] }
-- output { [[1, 0, 1], [0, 0, 0], [1, 0, 1]] }

-- bigger matrix
-- ==
-- input  { [[1, 1, 0, 1, 1, 0, 0, 0], [1, 0, 1, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 1, 1, 1], [0, 0, 0, 0, 0, 1, 1, 0], [1, 0, 0, 0, 1, 1, 0, 0], [1, 1, 0, 0, 0, 1, 1, 1], [0, 0, 1, 0, 1, 0, 0, 1], [1, 0, 0, 0, 0, 0, 1, 1]] }
-- output { [[1, 1, 0, 1, 1, 0, 0, 0], [0, 0, 0, 0, 0, 1, 1, 0], [1, 0, 1, 1, 1, 1, 0, 1], [1, 0, 0, 0, 0, 0, 0, 1], [1, 1, 0, 0, 1, 0, 0, 1], [1, 1, 0, 1, 0, 0, 0, 1], [1, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 1, 1]] }

let main [n] (matrix: [n][n]i32): [n][n]i32 =
  tick matrix
