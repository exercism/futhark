def gen_test_case(prop, description, inp, expected, f):
    strand1 = inp["strand1"]
    strand2 = inp["strand2"]

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{strand1}" "{strand2}" }}\n')

    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (strand1: []u8) (strand2: []u8): i32 =\n")
    f.write("  distance strand1 strand2\n")
