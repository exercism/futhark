def gen_test_case(prop, description, inp, expected, f):
    string = inp["string"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write("-- input {" + f' "{string}" ' + "}\n")
    f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_main(f):
    f.write("entry test_encode (string: []u8): []u8 =\n")
    f.write("  encode string\n\n")

    f.write("entry test_decode (string: []u8): []u8 =\n")
    f.write("  decode string\n\n")

    f.write("entry test_consistency (string: []u8): []u8 =\n")
    f.write("  decode (encode string)\n")
