MAIN = """\
entry test_is_equilateral (sides: [3]f64): bool =
  is_equilateral sides

entry test_is_isosceles (sides: [3]f64): bool =
  is_isosceles sides

entry test_is_scalene (sides: [3]f64): bool =
  is_scalene sides
"""


def gen_test_case(prop, description, inp, expected, f):
    expected = str(expected).lower()
    sides = list(map(float, inp["sides"]))
    if "also" not in description:
        description = f"{prop} returns {description}"
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_is_{prop}\n")
    f.write(f"-- input {{ {sides} }}\n")
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write(MAIN)
