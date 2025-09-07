def gen_test_case(prop, description, inp, expected, f):
    expected = str(expected).lower()
    year = inp["year"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {year} }}\n")
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (year: i32): bool =\n")
    f.write("  is_leap year\n")
