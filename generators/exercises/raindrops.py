def gen_test_case(prop, description, inp, expected, f):
    number = inp["number"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {number} }}\n")
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("let main (number: i32): []u8 =\n")
    f.write("  convert number\n")
