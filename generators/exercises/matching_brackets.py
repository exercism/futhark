def gen_test_case(prop, description, inp, expected, f):
    expected = str(expected).lower()
    value = inp["value"].replace("\\", "\\\\")

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' "{value}" ' + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main (value: []u8): bool =\n")
    f.write("  is_paired value\n")
