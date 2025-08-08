def gen_test_case(prop, description, inp, expected, f):
    expected = str(expected).lower()
    isbn = inp["isbn"]

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' "{isbn}" ' + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main (isbn: []u8): bool =\n")
    f.write("  is_valid isbn\n")
