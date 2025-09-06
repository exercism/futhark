def gen_test_case(prop, description, inp, expected, f):
    code = inp["number"]
    expected = ", ".join(expected)

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {code} }}\n")
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("let main (code: i32): []u8 =\n")
    f.write("  commands code\n")
