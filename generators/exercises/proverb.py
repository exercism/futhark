def gen_test_case(prop, description, inp, expected, f):
    strings = inp["strings"]
    strings = "".join(map(lambda line: line + "\\n", strings))
    expected = "".join(map(lambda line: line + "\\n", expected))

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' "{strings}" ' + "}\n")
    f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_main(f):
    f.write("let main (strings: []u8): []u8 =\n")
    f.write("  recite strings\n")
