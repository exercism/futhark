def gen_test_case(prop, description, inp, expected, f):
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input { 42 }\n")
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("let main (_n: i32): []u8 =\n")
    f.write("  copy hello\n")
