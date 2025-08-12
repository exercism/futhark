def gen_test_case(prop, description, inp, expected, f):
    def serialize_plant(plant):
        return '"' + plant + " " * (8 - len(plant)) + '"'

    def serialize_plants(plants):
        return "[" + ", ".join(map(serialize_plant, plants)) + "]"

    diagram = inp["diagram"].replace("\n", "\\n")
    student = inp["student"]
    expected = serialize_plants(expected)

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write("-- input  {" + f' "{diagram}" "{student}" ' + "}\n")
    f.write("-- output { " + expected + " }\n\n")


def gen_main(f):
    f.write("def name (p: plant): [8]u8 =\n")
    f.write("  match p\n")
    f.write('    case #grass    -> "grass   "\n')
    f.write('    case #clover   -> "clover  "\n')
    f.write('    case #radishes -> "radishes"\n')
    f.write('    case #violets  -> "violets "\n\n')

    f.write("def main (diagram: []u8) (student: []u8): [4][8]u8 =\n")
    f.write("  map1 name (plants diagram student)\n")
