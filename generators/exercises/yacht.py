def gen_test_case(prop, description, inp, expected, f):
    dice = inp["dice"]
    category = inp["category"]

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' {dice} "{category}" ' + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("def main (dice: [5]i32) (category: []u8): i32 =\n")
    f.write("  score dice category\n")
