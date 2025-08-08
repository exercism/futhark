def gen_test_case(prop, description, inp, expected, f):
    def serialize(matrix):
        if matrix == []:
            return "empty([0][0]i32)"
        if matrix == [[]]:
            return "[empty([0]i32)]"
        return str(matrix)

    def serialize_points(points):
        if points == []:
            return "empty([0][2]i32)"
        return str(sorted(map(lambda point: [point["row"], point["column"]], points)))

    matrix = serialize(inp["matrix"])
    expected = serialize_points(expected)
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input  {" + f" {matrix} " + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main [m] [n] (matrix: [m][n]i32): [][2]i32 =\n")
    f.write("  saddle_points matrix\n")
