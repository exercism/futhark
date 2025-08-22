def gen_test_case(prop, description, inp, expected, f):
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write("-- input {}\n")
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("entry test_drinks_water: []u8 =\n")
    f.write("  drinks_water\n\n")

    f.write("entry test_owns_zebra: []u8 =\n")
    f.write("  owns_zebra\n")
