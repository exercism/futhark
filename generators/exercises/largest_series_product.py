def gen_test_case(prop, description, inp, expected, f):
    digits = inp["digits"]
    span = inp["span"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{digits}" {span} }}\n')
    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (digits: []u8) (span: i32) : i32 =\n")
    f.write("  largest_product digits span\n")
