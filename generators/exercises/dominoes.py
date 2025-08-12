def gen_test_case(prop, description, inp, expected, f):
    def serialize(dominoes):
        if dominoes == []:
            dominoes = "empty([0][2]i32)"
        return str(dominoes)

    dominoes = serialize(inp["dominoes"])
    expected = str(expected).lower()
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input  {" + f" {dominoes} " + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main [n] (dominoes: [n][2]i32): bool =\n")
    f.write("  can_chain dominoes\n")
