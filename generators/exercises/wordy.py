def gen_test_case(prop, description, inp, expected, f):
    question = inp["question"]

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' "{question}" ' + "}\n")

    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main (question: []u8): i32 =\n")
    f.write("  answer question\n")
