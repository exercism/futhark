def gen_test_case(prop, description, inp, expected, f):
    x = float(inp["x"])
    y = float(inp["y"])
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {x} {y} }}\n")
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (x: f64) (y: f64): i32 =\n")
    f.write("  score x y\n")
