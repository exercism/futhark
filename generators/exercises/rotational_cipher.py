def gen_test_case(prop, description, inp, expected, f):
    shift_key = inp["shiftKey"]
    text = inp["text"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' {shift_key} "{text}" ' + "}\n")
    f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_main(f):
    f.write("let main (shift_key: i32) (text: []u8): []u8 =\n")
    f.write("  rotate shift_key text\n")
