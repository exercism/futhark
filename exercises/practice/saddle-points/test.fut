import "saddle_points"

-- Can identify single saddle point
-- ==
-- input  { [[9, 8, 7], [5, 3, 2], [6, 6, 7]] }
-- output { [[2, 1]] }

-- Can identify that empty matrix has no saddle points
-- ==
-- input  { [empty([0]i32)] }
-- output { empty([0][2]i32) }

-- Can identify lack of saddle points when there are none
-- ==
-- input  { [[1, 2, 3], [3, 1, 2], [2, 3, 1]] }
-- output { empty([0][2]i32) }

-- Can identify multiple saddle points in a column
-- ==
-- input  { [[4, 5, 4], [3, 5, 5], [1, 5, 4]] }
-- output { [[1, 2], [2, 2], [3, 2]] }

-- Can identify multiple saddle points in a row
-- ==
-- input  { [[6, 7, 8], [5, 5, 5], [7, 5, 6]] }
-- output { [[2, 1], [2, 2], [2, 3]] }

-- Can identify saddle point in bottom right corner
-- ==
-- input  { [[8, 7, 9], [6, 7, 6], [3, 2, 5]] }
-- output { [[3, 3]] }

-- Can identify saddle points in a non square matrix
-- ==
-- input  { [[3, 1, 3], [3, 2, 4]] }
-- output { [[1, 1], [1, 3]] }

-- Can identify that saddle points in a single column matrix are those with the minimum value
-- ==
-- input  { [[2], [1], [4], [1]] }
-- output { [[2, 1], [4, 1]] }

-- Can identify that saddle points in a single row matrix are those with the maximum value
-- ==
-- input  { [[2, 5, 3, 5]] }
-- output { [[1, 2], [1, 4]] }

let main [m] [n] (matrix: [m][n]i32): [][2]i32 =
  saddle_points matrix
