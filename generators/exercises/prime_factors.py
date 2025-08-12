def gen_test_case(prop, description, inp, expected, f):
    value = inp["value"]
    if expected == []:
        expected = "empty([0]i32)"
    else:
        expected = str(expected)

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {value} " + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main (value: i32): []i32 =\n")
    f.write("  factors value\n")
