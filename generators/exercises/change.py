def gen_test_case(prop, description, inp, expected, f):
    coins = inp["coins"]
    target = inp["target"]
    if coins == []:
        coins = "empty([0]i32)"

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {coins} {target} " + "}\n")

    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        if expected == []:
            expected = "empty([0]i32)"
        f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("def main (coins: []i32) (target: i32): []i32 =\n")
    f.write("  find_fewest_coins coins target\n")
