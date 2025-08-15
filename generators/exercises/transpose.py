def gen_test_case(prop, description, inp, expected, f):
    lines = inp["lines"]

    def rectangular(lines):
        length = max(map(len, lines))
        lines = list(map(lambda line: line + " " * (length - len(line)), lines))
        return str(lines).replace("'", '"')

    lines = rectangular(lines)
    expected = rectangular(expected)

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input { " + lines + " }\n")
    f.write("-- output { " + expected + " }\n\n")


def gen_main(f):
    f.write("def main [m] [n] (lines: [m][n]u8): [n][m]u8 =\n")
    f.write("  transpose lines\n")
