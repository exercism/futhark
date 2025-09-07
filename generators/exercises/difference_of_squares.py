MAIN = """\
entry test_square_of_sum (n: i32): i32 =
  square_of_sum n

entry test_sum_of_squares (n: i32): i32 =
  sum_of_squares n

entry test_difference_of_squares (n: i32): i32 =
  difference_of_squares n
"""


def gen_test_case(prop, description, inp, expected, f):
    n = inp["number"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write(f"-- input {{ {n} }}\n")
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write(MAIN)
