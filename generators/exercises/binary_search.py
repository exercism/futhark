def gen_test_case(prop, description, inp, expected, f):
    array = inp["array"]
    if array == []:
        array = "empty([0]i32)"
    else:
        array = str(array)
    value = inp["value"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {array} {value} " + "}\n")

    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main (array: []i32) (value: i32): i32 =\n")
    f.write("  find array value\n")
