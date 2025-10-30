MAIN = """\
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
"""


DIRECTIONS = ["north", "east", "south", "west"]


def gen_test_case(prop, description, inp, expected, f):
    in_x = inp["position"]["x"]
    in_y = inp["position"]["y"]
    in_d = DIRECTIONS.index(inp["direction"])
    if "instructions" in inp.keys():
        instructions = inp["instructions"]
    else:
        instructions = ""

    out_x = expected["position"]["x"]
    out_y = expected["position"]["y"]
    out_d = DIRECTIONS.index(expected["direction"])

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input  {{ [{in_x}, {in_y}, {in_d}] "{instructions}" }}\n')
    f.write(f"-- output {{ [{out_x}, {out_y}, {out_d}] }}\n\n")


def gen_main(f):
    f.write(MAIN)
