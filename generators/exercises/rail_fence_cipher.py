def gen_test_case(prop, description, inp, expected, f):
    msg = inp["msg"]
    rails = inp["rails"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write("-- input  {" + f' "{msg}" {rails}i64 ' + "}\n")
    f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_main(f):
    f.write("entry test_encode (msg: []u8) (rails: i64): []u8 =\n")
    f.write("  encode msg rails\n\n")

    f.write("entry test_decode (msg: []u8) (rails: i64): []u8 =\n")
    f.write("  decode msg rails\n")
