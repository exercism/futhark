def gen_test_case(prop, description, inp, expected, f):
    dna = inp["dna"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' "{dna}" ' + "}\n")
    f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_main(f):
    f.write("let main (dna: []u8): []u8 =\n")
    f.write("  to_rna dna\n")
