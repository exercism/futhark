def gen_test_case(prop, description, inp, expected, f):
    sum_ = inp["cage"]["sum"]
    size = inp["cage"]["size"]
    exclude = inp["cage"]["exclude"]
    if exclude == []:
        exclude = "empty([0]i32)"

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {sum_} {size} {exclude} " + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("def main (sum: i32) (size: i32) (exclude: []i32): [][]i32 =\n")
    f.write("  combinations sum size exclude\n")
