def gen_test_case(prop, description, inp, expected, f):
    expected = str(expected).lower()
    phrase = inp["phrase"].replace('"', '\\"')

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{phrase}" }}\n')
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (phrase: []u8): bool =\n")
    f.write("  is_isogram phrase\n")
