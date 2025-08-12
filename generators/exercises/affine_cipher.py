def gen_test_case(prop, description, inp, expected, f):
    a = inp["key"]["a"]
    b = inp["key"]["b"]
    phrase = inp["phrase"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write("-- input {" + f' {a} {b} "{phrase}" ' + "}\n")

    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_main(f):
    f.write("entry test_encode (a: i32) (b: i32) (phrase: []u8): []u8 =\n")
    f.write("  encode a b phrase\n\n")

    f.write("entry test_decode (a: i32) (b: i32) (phrase: []u8): []u8 =\n")
    f.write("  decode a b phrase\n")
