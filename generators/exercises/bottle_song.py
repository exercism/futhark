def gen_test_case(prop, description, inp, expected, f):
    start_bottles = inp["startBottles"]
    take_down = inp["takeDown"]
    expected = "".join(map(lambda line: line + "\\n", expected))

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {start_bottles} {take_down} " + "}\n")
    f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_main(f):
    f.write("let main (start_bottles: i32) (take_down: i32): []u8 =\n")
    f.write("  recite start_bottles take_down\n")
