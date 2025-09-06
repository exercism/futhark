def gen_test_case(prop, description, inp, expected, f):
    factors = inp["factors"]
    if factors == []:
        factors = "empty([0]i32)"
    limit = inp["limit"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {factors} {limit} }}\n")
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (numbers: []i32) (upper_bound: i32): i32 =\n")
    f.write("  sum_of_multiples numbers upper_bound\n")
