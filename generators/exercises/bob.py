def gen_test_case(prop, description, inp, expected, f):
    hey_bob = (
        inp["heyBob"].replace("\n", "\\n").replace("\r", "\\r").replace("\t", "\\t")
    )
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{hey_bob}" }}\n')
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("let main (input: []u8): []u8 =\n")
    f.write("  response input\n")
