import "robot_simulator"

-- at origin facing north
-- ==
-- input  { [0, 0, 0] "" }
-- output { [0, 0, 0] }

-- at negative position facing south
-- ==
-- input  { [-1, -1, 2] "" }
-- output { [-1, -1, 2] }

-- changes north to east
-- ==
-- input  { [0, 0, 0] "R" }
-- output { [0, 0, 1] }

-- changes east to south
-- ==
-- input  { [0, 0, 1] "R" }
-- output { [0, 0, 2] }

-- changes south to west
-- ==
-- input  { [0, 0, 2] "R" }
-- output { [0, 0, 3] }

-- changes west to north
-- ==
-- input  { [0, 0, 3] "R" }
-- output { [0, 0, 0] }

-- changes north to west
-- ==
-- input  { [0, 0, 0] "L" }
-- output { [0, 0, 3] }

-- changes west to south
-- ==
-- input  { [0, 0, 3] "L" }
-- output { [0, 0, 2] }

-- changes south to east
-- ==
-- input  { [0, 0, 2] "L" }
-- output { [0, 0, 1] }

-- changes east to north
-- ==
-- input  { [0, 0, 1] "L" }
-- output { [0, 0, 0] }

-- facing north increments Y
-- ==
-- input  { [0, 0, 0] "A" }
-- output { [0, 1, 0] }

-- facing south decrements Y
-- ==
-- input  { [0, 0, 2] "A" }
-- output { [0, -1, 2] }

-- facing east increments X
-- ==
-- input  { [0, 0, 1] "A" }
-- output { [1, 0, 1] }

-- facing west decrements X
-- ==
-- input  { [0, 0, 3] "A" }
-- output { [-1, 0, 3] }

-- moving east and north from README
-- ==
-- input  { [7, 3, 0] "RAALAL" }
-- output { [9, 4, 3] }

-- moving west and north
-- ==
-- input  { [0, 0, 0] "LAAARALA" }
-- output { [-4, 1, 3] }

-- moving west and south
-- ==
-- input  { [2, -7, 1] "RRAAAAALA" }
-- output { [-3, -8, 2] }

-- moving east and north
-- ==
-- input  { [8, 4, 2] "LAAARRRALLLL" }
-- output { [11, 5, 0] }

local def encode_direction (d: direction): i32 =
    match (d)
      case #north -> 0
      case #east -> 1
      case #south -> 2
      case #west -> 3

local def decode_direction (i: i32): direction =
    match (i)
      case 0 -> #north
      case 1 -> #east
      case 2 -> #south
      case 3 -> #west
      case _ -> assert false #north

def main (start: []i32) (instructions: []u8): []i32 =
  let start_position = (start[0], start[1])
  let start_direction = decode_direction start[2]
  let result = move (start_position, start_direction) instructions
  in
    [result.0.0, result.0.1, encode_direction result.1]
