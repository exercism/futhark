def gen_test_case(prop, description, inp, expected, f):
    items = inp["items"]
    maximum_weight = inp["maximumWeight"]
    if items == []:
        weights = "empty([0]i32)"
        values = "empty([0]i32)"
    else:
        weights = list(map(lambda item: item["weight"], items))
        values = list(map(lambda item: item["value"], items))

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {weights} {values} {maximum_weight} " + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write(
        "def main [n] (weights: [n]i32) (values: [n]i32) (maximum_weight: i32): i32 =\n"
    )
    f.write("  maximum_value weights values maximum_weight\n")
