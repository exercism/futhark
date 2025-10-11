def gen_test_case(prop, description, inp, expected, f):
    size = inp["size"]
    if expected == []:
        expected = "empty([0][0]i32)"
    else:
        expected = str(expected)

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {size} }}\n")
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("def main (size: i32): [][]i32 =\n")
    f.write("  spiral_matrix size\n")
