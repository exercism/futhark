def extra_cases():
    return [
        {
            "description": "encode boundary characters",
            "property": "encode",
            "input": {"phrase": "/09:@AMNZ[`amnz{"},
            "expected": "09znm aznma",
        }
    ]


def gen_test_case(prop, description, inp, expected, f):
    phrase = inp["phrase"]
    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write(f"-- entry: test_{prop}\n")
    f.write(f'-- input {{ "{phrase}" }}\n')
    f.write(f'-- output {{ "{expected}" }}\n\n')


def gen_main(f):
    f.write("entry test_encode (phrase: []u8): []u8 =\n")
    f.write("  encode phrase\n\n")

    f.write("entry test_decode (phrase: []u8): []u8 =\n")
    f.write("  decode phrase\n")
