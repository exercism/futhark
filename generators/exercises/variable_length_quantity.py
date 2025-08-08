def gen_test_case(prop, description, inp, expected, f):
    integers = inp["integers"]
    if prop == "encode":
        integers = str(integers).replace("]", "u32]").replace(", ", "u32, ")
    elif not isinstance(expected, dict):
        expected = str(expected).replace("]", "u32]").replace(", ", "u32, ")

    def serialize(message):
        return message

    integers = serialize(integers)
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write("-- input {" + f" {integers} " + "}\n")
    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        expected = serialize(expected)
        f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("entry test_encode (integers: []u32): []i32 =\n")
    f.write("  encode integers\n\n")

    f.write("entry test_decode (integers: []i32): []u32 =\n")
    f.write("  decode integers\n")
