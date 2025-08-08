def gen_test_case(prop, description, inp, expected, f):
    def serialize(lines):
        length = max(map(len, lines))

        result = []
        for line in lines:
            result.append(line + " " * (length - len(line)))
        return str(result).replace("'", '"')

    board = serialize(inp["board"])

    if expected == "":
        expected = "."

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input  {" + f" {board} " + "}\n")
    f.write('-- output { "' + expected + '" }\n\n')


def gen_main(f):
    f.write("let main [m] [n] (board: [m][n]u8): [1]u8 =\n")
    f.write("  [winner board]\n")
