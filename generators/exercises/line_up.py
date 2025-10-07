def gen_test_case(prop, description, inp, expected, f):
    name = inp["name"]
    number = inp["number"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{name}" {number} }}\n')
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("let main (name: []u8) (number: i32): []u8 =\n")
    f.write("  format name number\n")
