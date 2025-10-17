def gen_test_case(prop, description, inp, expected, f):
    colors = inp["colors"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{colors[0]}" "{colors[1]}" }}\n')
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (first: []u8) (second: []u8): i32 =\n")
    f.write("  value first second\n")
