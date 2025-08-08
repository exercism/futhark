def gen_test_case(prop, description, inp, expected, f):
    radicand = inp["radicand"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {radicand} " + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main (radicand: i32): i32 =\n")
    f.write("  square_root radicand\n")
