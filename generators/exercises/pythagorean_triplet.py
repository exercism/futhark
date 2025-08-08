def gen_test_case(prop, description, inp, expected, f):
    n = inp["n"]
    if expected == []:
        expected = "empty([0][3]i32)"
    else:
        expected = str(expected)

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {n} " + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main (n: i32): [][3]i32 =\n")
    f.write("  triplets_with_sum n\n")
