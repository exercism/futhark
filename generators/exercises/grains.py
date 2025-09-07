MAIN = """\
entry test_square (n: i32): u64 =
  square n

entry test_total (_n: i32): u64 =
  total ()
"""


def gen_test_case(prop, description, inp, expected, f):
    if prop == "total":
        square = 42
    else:
        square = inp["square"]

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write(f"-- input {{ {square} }}\n")

    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        f.write(f"-- output {{ {expected}u64 }}\n\n")


def gen_main(f):
    f.write(MAIN)
