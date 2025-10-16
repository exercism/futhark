def gen_test_case(prop, description, inp, expected, f):
    color = inp["color"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{color}" }}\n')
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (color: []u8): i32 =\n")
    f.write("  colorCode color\n")
