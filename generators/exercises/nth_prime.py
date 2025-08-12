def extra_cases():
    return [
        {
            "description": "seventh prime",
            "property": "prime",
            "input": {"number": 7},
            "expected": 17,
        },
        {
            "description": "very big prime",
            "property": "prime",
            "input": {"number": 65537},
            "expected": 821647,
        },
    ]


def gen_test_case(prop, description, inp, expected, f):
    number = inp["number"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input {" + f" {number} " + "}\n")

    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        f.write("-- output {" + f" {expected} " + "}\n\n")


def gen_main(f):
    f.write("let main (number: i32): i32 =\n")
    f.write("  prime number\n")
