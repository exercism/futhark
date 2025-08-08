def gen_test_case(prop, description, inp, expected, f):
    def serialize(lines):
        if lines == []:
            lines = "empty([0][0]u8)"

        return str(lines).replace("'", '"')

    garden = serialize(inp["garden"])
    expected = serialize(expected)
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input  {" + f" {garden} " + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main [m] [n] (garden: [m][n]u8): [m][n]u8 =\n")
    f.write("  annotate garden\n")
