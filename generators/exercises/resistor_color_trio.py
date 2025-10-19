MAIN = """\
def main (first: []u8) (second: []u8) (third: []u8): []u8 =
  let result = label first second third
  in
    result.value ++ " " ++ result.unit
"""


def extra_cases():
    # Test cases from the Julia track.
    return [
        {
            "description": "Orange and orange and red",
            "property": "label",
            "input": {"colors": ["orange", "orange", "red"]},
            "expected": {"value": "3.3", "unit": "kiloohms"},
        },
        {
            "description": "Orange and orange and green",
            "property": "label",
            "input": {"colors": ["orange", "orange", "green"]},
            "expected": {"value": "3.3", "unit": "megaohms"},
        },
        {
            "description": "White and white and violet",
            "property": "label",
            "input": {"colors": ["white", "white", "violet"]},
            "expected": {"value": "990", "unit": "megaohms"},
        },
        {
            "description": "White and white and grey",
            "property": "label",
            "input": {"colors": ["white", "white", "grey"]},
            "expected": {"value": "9.9", "unit": "gigaohms"},
        },
    ]


def gen_test_case(prop, description, inp, expected, f):
    colors = inp["colors"]
    value = expected["value"]
    unit = expected["unit"]

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f'-- input {{ "{colors[0]}" "{colors[1]}" "{colors[2]}" }}\n')
    f.write(f'-- output {{ "{value:<3} {unit:<8}" }}\n\n')


def gen_main(f):
    f.write(MAIN)
