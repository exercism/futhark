def gen_test_case(prop, description, inp, expected, f):
    rows = str(inp["rows"]).replace("'", '"')

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input  {{ {rows} }}\n")

    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("def main (rows: [][]u8): []u8 =\n")
    f.write("  convert rows\n")
