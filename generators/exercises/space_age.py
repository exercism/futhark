def gen_test_case(prop, description, inp, expected, f):
    planet = inp["planet"]
    seconds = inp["seconds"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{planet}" {seconds}i64 }}\n')
    f.write(f"-- output {{ {expected} }}\n\n")


def gen_main(f):
    f.write("let main (planet: []u8) (seconds: i64): f64 =\n")
    f.write("  age planet seconds\n")
