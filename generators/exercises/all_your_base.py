def gen_test_case(prop, description, inp, expected, f):
    inputBase = inp["inputBase"]
    outputBase = inp["outputBase"]
    digits = inp["digits"]
    if digits == []:
        digits = "empty([0]i32)"

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {inputBase} {digits} {outputBase} " + "}\n")

    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("def main (input_base: i32) (digits: []i32) (output_base: i32): []i32 =\n")
    f.write("  rebase input_base digits output_base\n")
