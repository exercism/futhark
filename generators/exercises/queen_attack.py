MAIN = """\
entry test_create (row: i32) (column: i32): bool =
  let queen = create row column
  in queen.row == row && queen.column == column

entry test_can_attack (white_queen_row: i32) (white_queen_column: i32) (black_queen_row: i32) (black_queen_column: i32): bool =
  let white_queen = create white_queen_row white_queen_column
  let black_queen = create black_queen_row black_queen_column
  in can_attack white_queen black_queen
"""


def serialize(queen):
    row = queen["position"]["row"]
    column = queen["position"]["column"]
    return f"{row} {column}"


def gen_test_case(prop, description, inp, expected, f):
    if prop == "create":
        queen = serialize(inp["queen"])
        f.write(f"-- {description}\n")
        f.write("-- ==\n")
        f.write(f"-- entry: test_{prop}\n")
        f.write(f"-- input {{ {queen} }}\n")
        if isinstance(expected, dict):
            f.write("-- error: Error*\n\n")
        else:
            f.write("-- output { true }\n\n")
    else:
        expected = str(expected).lower()
        white_queen = serialize(inp["white_queen"])
        black_queen = serialize(inp["black_queen"])
        f.write(f"-- {description}\n")
        f.write("-- ==\n")
        f.write(f"-- entry: test_{prop}\n")
        f.write(f"-- input {{ {white_queen} {black_queen} }}\n")
        f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write(MAIN)
