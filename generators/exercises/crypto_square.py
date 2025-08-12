def gen_test_case(prop, description, inp, expected, f):
    plaintext = inp["plaintext"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f' "{plaintext}" ' + "}\n")
    f.write("-- output {" + f' "{expected}" ' + "}\n\n")


def gen_main(f):
    f.write("def main (plaintext: []u8): []u8 =\n")
    f.write("  ciphertext plaintext\n")
