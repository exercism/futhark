def gen_test_case(prop, description, inp, expected, f):
    str = inp["value"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{str}" }}\n')
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("let main (str: []u8): []u8 =\n")
    f.write("  reverse str\n")
