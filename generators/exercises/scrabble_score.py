def gen_test_case(prop, description, inp, expected, f):
    letters = inp["word"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{letters}" }}\n')
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (letters: []u8): i32 =\n")
    f.write("  score letters\n")
