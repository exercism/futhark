def gen_test_case(prop, description, inp, expected, f):
    string = inp["string"].replace("\n", "\\n")
    index = inp["index"]
    if expected == []:
        expected = "empty([0]i32)"
    else:
        expected = str(expected)

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write(f'-- input {{ "{string}" {index} }}\n')
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("entry test_row (string: []u8) (index: i32): []i32 =\n")
    f.write("  row string index\n\n")

    f.write("entry test_column (string: []u8) (index: i32): []i32 =\n")
    f.write("  column string index\n")
