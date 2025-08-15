def gen_test_case(prop, description, inp, expected, f):
    def serialize_list(values):
        if values == []:
            return "empty([0]i32)"
        return str(values)

    list_one = serialize_list(inp["listOne"])
    list_two = serialize_list(inp["listTwo"])

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input  {" + f" {list_one} {list_two} " + "}\n")
    f.write('-- output { "' + expected + '" }\n\n')


def gen_main(f):
    f.write("local def name (r: relation): []u8 =\n")
    f.write("  match r\n")
    f.write('    case #equal     -> "equal"\n')
    f.write('    case #superlist -> "superlist"\n')
    f.write('    case #sublist   -> "sublist"\n')
    f.write('    case #unequal   -> "unequal"\n\n')

    f.write("def main (list_one: []i32) (list_two: []i32): []u8 =\n")
    f.write("  name (compare list_one list_two)\n")
