MAIN = """\
local def name(s: state): []u8 =
  match s
    case #win     -> "win"
    case #draw    -> "draw"
    case #ongoing -> "ongoing"
    case #invalid -> "invalid"

let main (board: [3][3]u8): []u8 =
  name (game_state board)
"""


def gen_test_case(prop, description, inp, expected, f):
    board = str(inp["board"]).replace("'", '"')
    if isinstance(expected, dict):
        expected = "invalid"

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {board} }}\n")
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write(MAIN)
