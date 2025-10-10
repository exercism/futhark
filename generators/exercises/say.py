def extra_cases():
    return [
        {
            "description": "additional big number",
            "property": "say",
            "input": {"number": 19011016013},
            "expected": "nineteen billion eleven million sixteen thousand thirteen",
        },
        {
            "description": "different big number",
            "property": "say",
            "input": {"number": 812000070017},
            "expected": "eight hundred twelve billion seventy thousand seventeen",
        },
        {
            "description": "alternative big number",
            "property": "say",
            "input": {"number": 60010015018},
            "expected": "sixty billion ten million fifteen thousand eighteen",
        },
    ]


def gen_test_case(prop, description, inp, expected, f):
    number = inp["number"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- input {{ {number}i64 }}\n")
    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("let main (number: i64): []u8 =\n")
    f.write("  say number\n")
