def gen_test_case(prop, description, inp, expected, f):
    phrase = inp["phrase"]

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' "{phrase}" ' + "}\n")
    f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_true_test_case(prop, description, inp, expected, f):
    phrase = inp["phrase"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' "{phrase}" ' + "}\n")
    f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_main(f):
    f.write("def main (phrase: []u8): []u8 =\n")
    f.write("  translate phrase\n")
