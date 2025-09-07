def gen_test_case(prop, description, inp, expected, f):
    expected = str(expected).lower()
    sentence = inp["sentence"].replace('"', '\\"')

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{sentence}" }}\n')
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (sentence: []u8): bool =\n")
    f.write("  is_pangram sentence\n")
