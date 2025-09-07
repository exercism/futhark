MAIN = """\
entry test_scores [n] (values: [n]i32): [n]i32 =
  scores values

entry test_latest (values: []i32): i32 =
  latest values

entry test_personal_best (values: []i32): i32 =
  personal_best values

entry test_personal_top_three (values: []i32): [3]i32 =
  personal_top_three values
"""


def gen_test_case(prop, description, inp, expected, f):
    values = inp["scores"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write(f"-- input {{ {values} }}\n")
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write(MAIN)
