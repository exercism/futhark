def gen_test_case(prop, description, inp, expected, f):
    strings = str(inp["strings"]).replace("'", '"')

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input  { " + strings + " }\n")
    f.write("-- output { " + str(expected) + " }\n\n")


def gen_main(f):
    f.write("let main (strings: [][]u8): i32 =\n")
    f.write("  rectangles strings\n")
