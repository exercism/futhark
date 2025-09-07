def gen_test_case(prop, description, inp, expected, f):
    number = inp["number"]
    expected = str(expected).lower()
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {number} }}\n")
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (number: i32): bool =\n")
    f.write("  is_armstrong_number number\n")
