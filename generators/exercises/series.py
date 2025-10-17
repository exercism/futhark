def gen_test_case(prop, description, inp, expected, f):
    series = inp["series"]
    sliceLength = inp["sliceLength"]

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input  {{ "{series}" {sliceLength} }}\n')
    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        expected = str(expected).replace("'", '"')
        f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (series: []u8) (sliceLength: i32): [][]u8 =\n")
    f.write("  slices series (i64.i32 sliceLength)\n")
