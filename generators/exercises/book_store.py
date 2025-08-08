def gen_test_case(prop, description, inp, expected, f):
    basket = inp["basket"]
    if basket == []:
        basket = "empty([0]i32)"

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {basket} " + "}\n")

    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main (basket: []i32): i32 =\n")
    f.write("  total basket\n")
