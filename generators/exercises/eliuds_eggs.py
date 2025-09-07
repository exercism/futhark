def gen_test_case(prop, description, inp, expected, f):
    number = inp["number"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {number} }}\n")
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (encoded_value: i32): i32 =\n")
    f.write("  egg_count encoded_value\n")
