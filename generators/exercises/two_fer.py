def gen_test_case(prop, description, inp, expected, f):
    name = inp["name"] or ""
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{name}" }}\n')
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("let main (name: []u8): []u8 =\n")
    f.write("  two_fer name\n")
