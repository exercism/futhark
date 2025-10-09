def gen_test_case(prop, description, inp, expected, f):
    letter = inp["letter"]
    expected = str(expected).replace("'", '"')

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input  {{ "{letter}" }}\n')
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (letter: [1]u8): [][]u8 =\n")
    f.write("  rows letter[0]\n")
