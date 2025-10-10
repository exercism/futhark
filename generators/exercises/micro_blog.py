def gen_test_case(prop, description, inp, expected, f):
    phrase = inp["phrase"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{phrase}" }}\n')
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("let main (phrase: []u8): []u8 =\n")
    f.write("  truncate phrase\n")
