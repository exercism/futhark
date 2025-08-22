def gen_test_case(prop, description, inp, expected, f):
    start_verse = inp["startVerse"]
    end_verse = inp["endVerse"]
    expected = "".join(map(lambda line: line + "\\n", expected))

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {start_verse} {end_verse} }}\n")
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("let main (start_verse: i32) (end_verse: i32): []u8 =\n")
    f.write("  recite start_verse end_verse\n")
