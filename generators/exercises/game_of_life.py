def gen_test_case(prop, description, inp, expected, f):
    def serialize(matrix):
        if matrix == []:
            return "empty([0][0]i32)"
        return str(matrix)

    matrix = serialize(inp["matrix"])
    expected = serialize(expected)
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input  {" + f" {matrix} " + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main [n] (matrix: [n][n]i32): [n][n]i32 =\n")
    f.write("  tick matrix\n")
