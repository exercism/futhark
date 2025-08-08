def gen_test_case(prop, description, inp, expected, f):
    limit = inp["limit"]

    def serialize(primes):
        if primes == []:
            return "empty([0]i32)"
        return str(primes)

    expected = serialize(expected)

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {limit} " + "}\n")
    f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("def main (limit: i32): []i32 =\n")
    f.write("  primes limit\n")
