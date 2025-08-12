def gen_test_case(prop, description, inp, expected, f):
    def serialize(message):
        if message == []:
            return "empty([0]i32)"
        return str(message).replace("'", "")

    message = inp["message"]
    message = serialize(message)
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write("-- input {" + f" {message} " + "}\n")
    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        expected = serialize(expected)
        f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("entry test_transmit_sequence (message: []i32): []i32 =\n")
    f.write("  transmit_sequence message\n\n")

    f.write("entry test_decode_message (message: []i32): []i32 =\n")
    f.write("  decode_message message\n")
